import 'package:delivey_app/app/core/ui/helps/loaders.dart';
import 'package:delivey_app/app/pages/home/controllers/home_controller.dart';
import 'package:delivey_app/app/pages/home/controllers/home_state.dart';
import 'package:delivey_app/app/pages/home/widget/delivery_product_tile.dart';
import 'package:delivey_app/app/core/ui/helps/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../core/ui/base_state/base_state.dart';
import '../../core/ui/widget/delivery_appBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage,HomeController>{
  @override
  void onReady() {
    controller.loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: DeliveryAppBar(),
        body: BlocConsumer<HomeController, HomeState>(
          listener: (context, state) => {
            state.status.matchAny(
              any: () => hideLoader(),
              loading: () => showLoader(),
              error: (){
                hideLoader();
                showError(state.errorMessage);
              },
            )
          },
          buildWhen: (previous, current) => current.status.matchAny(
            any: () => false,
            initial: () => true,
            loaded: () => true,
          ),
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: state.product.length,
                        itemBuilder: (context, index) {
                          final product = state.product[index];
                          return DeliveryProductTile(product: product);
                        }))
              ],
            );
          },
        ));
  }
}
