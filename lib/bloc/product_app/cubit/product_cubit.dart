import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/product_app/network/product_repository.dart';
import 'package:project1_change_appbar_color/bloc/product_app/state/product_states.dart';

class ProductsCubit extends Cubit<ProductStates> {
  final ProductRepository _productRepository;
  ProductsCubit(this._productRepository) : super(const ProductInitialState());

  Future<void> getProducts() async {
    try {
      emit(const ProductLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      final response = await _productRepository.getProducts();
      emit(ProductLoadedState(response));
    } on NetworkError catch (e) {
      emit(ProductErrorState(e.message));
    }
  }
}
