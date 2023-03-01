import 'package:flutter_bloc/flutter_bloc.dart';

import '../repositories/menu_repository.dart';
import 'combo_cubit.dart';
import 'pizza_cubit.dart';
import 'product_state.dart';
import 'single_product_cubit.dart';

abstract class ProductCubit<S extends ProductState> extends Cubit<S> {
  ProductCubit({
    required S initialState,
  }) : super(initialState);

  static ProductCubit resolve({
    required String offerId,
    required MenuRepository repository,
  }) {
    final offer = repository.getOfferById(offerId);

    if (offer.isCombo) {
      return ComboCubit.fromOffer(offer, repository);
    } else if (offer.isPizza) {
      return PizzaCubit.fromOffer(offer, repository);
    } else {
      return SingleProductCubit.fromOffer(offer, repository);
    }
  }

  R map<R>({
    required R Function(SingleProductCubit cubit) singleProduct,
    required R Function(PizzaCubit cubit) pizza,
    required R Function(ComboCubit cubit) combo,
  });
}
