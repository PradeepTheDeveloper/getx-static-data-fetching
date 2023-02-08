import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/shopping_controller.dart';
import 'widgets/grid_view.dart';

class ProductOverview extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Products Demo')),
        body: GetX<ShoppingController>(
          builder: (controller) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1),
              itemCount: controller.products.length,
              itemBuilder: (context, i) => GridViewOverView(
                id: controller.products[i].id,
                imageUrl: controller.products[i].productImage,
                title: controller.products[i].productName,
              ),
            );
          },
        ));
  }
}
