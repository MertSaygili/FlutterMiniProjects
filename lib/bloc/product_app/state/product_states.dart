import '../model/product_model.dart';

abstract class ProductStates {
  const ProductStates();
}

class ProductInitialState extends ProductStates {
  const ProductInitialState();
}

class ProductLoadingState extends ProductStates {
  const ProductLoadingState();
}

class ProductLoadedState extends ProductStates {
  final List<Product> products;

  const ProductLoadedState(this.products);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductLoadedState && other.products == products;
  }

  @override
  int get hashCode => products.hashCode;
}

class ProductErrorState extends ProductStates {
  final String error;

  const ProductErrorState(this.error);
}
