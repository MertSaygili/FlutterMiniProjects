import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1_change_appbar_color/bloc/product_app/network/product_repository.dart';

import '../cubit/product_cubit.dart';
import '../state/product_states.dart';

class ShowProductsPage extends StatefulWidget {
  const ShowProductsPage({Key? key}) : super(key: key);

  @override
  State<ShowProductsPage> createState() => _ShowProductsPageState();
}

class _ShowProductsPageState extends State<ShowProductsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(ProductRepositoryImpl()),
      child: _buildScaffold(context),
    );
  }

  Scaffold _buildScaffold(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(_Strings()._appBarTitle), centerTitle: true),
        body: BlocConsumer<ProductsCubit, ProductStates>(
          builder: (context, state) {
            if (state is ProductInitialState) {
              return _productInitial(context);
            } else if (state is ProductLoadingState) {
              return _productLoading();
            } else if (state is ProductLoadedState) {
              return _productLoaded(state);
            } else {
              return const Center(child: Text('Something went wrong'));
            }
          },
          listener: (context, state) {
            _errorMessage(state, context);
          },
        ),
      );

  ListView _productLoaded(ProductLoadedState state) {
    return ListView.builder(
      itemCount: state.products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(state.products[index].description ?? ''),
          subtitle: Text(state.products[index].price.toString()),
        );
      },
    );
  }

  Center _productLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  Center _productInitial(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Press the button to load products'),
          FloatingActionButton(onPressed: () {
            context.read<ProductsCubit>().getProducts();
          }),
        ],
      ),
    );
  }

  void _errorMessage(Object? state, BuildContext context) {
    if (state is ProductErrorState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(state.error)),
      );
    }
  }
}

class _Strings {
  final String _appBarTitle = 'Products';
}
