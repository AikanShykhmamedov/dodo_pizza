import 'package:equatable/equatable.dart';

import '../models/dough.dart';
import '../models/product_bundle.dart';
import '../models/product_size.dart';

// ignore_for_file: overridden_fields

abstract class ProductState extends Equatable {
  const ProductState({
    required this.bundle,
  });

  final ProductBundle bundle;

  @override
  List<Object> get props => [bundle];
}

class SingleProductState extends ProductState {
  const SingleProductState({
    required this.bundle,
    required this.sizes,
  }) : super(bundle: bundle);

  @override
  final SingleProductBundle bundle;
  final Iterable<ProductSize>? sizes;

  SingleProductState copyWith({covariant SingleProductBundle? bundle}) {
    return SingleProductState(
      bundle: bundle ?? this.bundle,
      sizes: sizes,
    );
  }

  @override
  List<Object> get props => super.props
    ..addAll([
      if (sizes != null) sizes!,
    ]);
}

class PizzaState extends SingleProductState {
  const PizzaState({
    required this.bundle,
    required this.sizes,
    required this.doughs,
  }) : super(
          bundle: bundle,
          sizes: sizes,
        );

  @override
  final PizzaBundle bundle;
  @override
  final Iterable<ProductSize> sizes;
  final Iterable<Dough> doughs;

  @override
  PizzaState copyWith({PizzaBundle? bundle, Iterable<Dough>? doughs}) {
    return PizzaState(
      bundle: bundle ?? this.bundle,
      sizes: sizes,
      doughs: doughs ?? this.doughs,
    );
  }

  @override
  List<Object> get props => super.props..add(doughs);
}

class ComboState extends ProductState {
  const ComboState({
    required this.bundle,
  }) : super(bundle: bundle);

  @override
  final ComboBundle bundle;

  ComboState copyWith({ComboBundle? bundle}) {
    return ComboState(
      bundle: bundle ?? this.bundle,
    );
  }
}
