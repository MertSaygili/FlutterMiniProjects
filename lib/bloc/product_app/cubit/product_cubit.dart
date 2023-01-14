import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/product_app/network/product_repository.dart';
import 'package:project1_change_appbar_color/bloc/product_app/state/product_states.dart';

import '../model/product_model.dart';

class ProductsCubit extends Cubit<ProductStates> {
  final ProductRepository _productRepository;
  ProductsCubit(this._productRepository) : super(const ProductInitialState());

  List<Product> products = [];

  Future<void> filterProducts(String value) async {
    List<Product> filteredList =
        products.where((element) => element.brand!.contains(value)).toList();

    emit(ProductLoadedState(filteredList));
  }

  Future<void> justLoading() async {
    emit(const ProductLoadingState());
  }

  Future<void> getProducts() async {
    try {
      emit(const ProductLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      final response = await _productRepository.getProducts();
      products = response;
      emit(ProductLoadedState(response));
    } on NetworkError catch (e) {
      emit(ProductErrorState(e.message));
    }
  }
}
