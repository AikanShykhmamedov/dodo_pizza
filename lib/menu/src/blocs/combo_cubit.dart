import '../models/combo_slot.dart';
import '../models/combo_slot_group_item.dart';
import '../models/menu_offer.dart';
import '../models/product.dart';
import '../models/product_bundle.dart';
import '../repositories/menu_repository.dart';
import 'pizza_cubit.dart';
import 'product_cubit.dart';
import 'product_state.dart';
import 'single_product_cubit.dart';

typedef SlotGroups = Map<ComboSlot, List<ComboSlotGroup>>;

class ComboCubit extends ProductCubit<ComboState> {
  ComboCubit._({
    required MenuRepository repository,
    required num basePrice,
    required num baseFullPrice,
    required super.initialState,
  })  : _repository = repository,
        _basePrice = basePrice,
        _baseFullPrice = baseFullPrice,
        _slotGroups = {};

  final MenuRepository _repository;
  final num _basePrice;
  final num _baseFullPrice;
  final SlotGroups _slotGroups;

  factory ComboCubit.fromOffer(MenuOffer offer, MenuRepository repository) {
    final comboId = offer.shoppingItems.single.productId;
    final combo = repository.getProductById(comboId) as Combo;

    final slotProductBundles = _getSlotProductBundles(combo.slots, repository);
    final basePrice = offer.shoppingItems.single.price;
    final baseFullPrice = combo.fullPrice;

    final initialState = ComboState(
      bundle: ComboBundle(
        product: combo,
        slotProductBundles: slotProductBundles,
        price: basePrice,
        basePrice: basePrice,
        fullPrice: baseFullPrice,
      ),
    );

    return ComboCubit._(
      repository: repository,
      basePrice: basePrice,
      baseFullPrice: baseFullPrice,
      initialState: initialState,
    );
  }

  static SlotProductBundles _getSlotProductBundles(
    List<ComboSlot> slots,
    MenuRepository repository,
  ) {
    final SlotProductBundles result = {};

    for (final slot in slots) {
      final product = repository.getProductById(slot.defaultProductId) as SingleProduct;
      final extraPrice = slot.defaultProduct.extraPrice;

      if (product is Pizza) {
        result[slot] = PizzaBundle(
          product: product,
          removedIngredients: const {},
          selectedToppingIds: const {},
          price: extraPrice,
        );
      } else {
        result[slot] = SingleProductBundle(
          product: product,
          removedIngredients: const {},
          selectedToppingIds: const {},
          price: extraPrice,
        );
      }
    }

    return result;
  }

  @override
  R map<R>({
    required R Function(SingleProductCubit cubit) singleProduct,
    required R Function(PizzaCubit cubit) pizza,
    required R Function(ComboCubit cubit) combo,
  }) {
    return combo(this);
  }

  List<ComboSlotGroup> getGroups(ComboSlot slot) {
    if (_slotGroups.containsKey(slot)) {
      return _slotGroups[slot]!;
    }

    final groups = <ComboSlotGroup>[];

    var i = 0;
    while (i < slot.products.length) {
      final slotProduct = slot.products[i];
      final product = _repository.getProductById(slotProduct.productId) as SingleProduct;

      final groupProduct = ComboSlotGroupItem(
        product: product,
        extraPrice: slotProduct.extraPrice,
      );

      if (product.metaProductId == null) {
        groups.add([groupProduct]);
        i++;
      } else {
        final group = [groupProduct];
        i++;

        while (i < slot.products.length) {
          final nextSlotProduct = slot.products[i];
          final nextProduct =
              _repository.getProductById(nextSlotProduct.productId) as SingleProduct;

          if (product.metaProductId! == nextProduct.metaProductId) {
            final nextGroupProduct = ComboSlotGroupItem(
              product: nextProduct,
              extraPrice: nextSlotProduct.extraPrice,
            );

            group.add(nextGroupProduct);
            i++;
          } else {
            break;
          }
        }

        groups.add(group);
      }
    }

    _slotGroups[slot] = groups;

    return groups;
  }

  void selectSlotProductBundle(ComboSlot slot, SingleProductBundle bundle) {
    final slotProductBundles =
        Map<ComboSlot, SingleProductBundle>.of(state.bundle.slotProductBundles);
    slotProductBundles[slot] = bundle;
    final extraPrice = _getExtraPrice(slotProductBundles);
    final price = _basePrice + extraPrice;
    final fullPrice = _baseFullPrice + extraPrice;

    emit(state.copyWith(
      bundle: state.bundle.copyWith(
        slotProductBundles: slotProductBundles,
        price: price,
        fullPrice: fullPrice,
      ),
    ));
  }

  num _getExtraPrice(SlotProductBundles slotProductBundles) {
    return slotProductBundles.values.fold<num>(0, (sum, e) => sum + e.price);
  }
}
