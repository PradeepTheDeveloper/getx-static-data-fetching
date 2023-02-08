import 'package:get/get.dart';

import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage:
              'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiArR9K9VJCNzFBtVQ_EWpVDkI3mQCYdNyXMkhz7ey-fZ94RxoKXh2FVm5qxpo0jiRz83UY-PrCovuiqpZKzwfHnJEZ7t9lX2Mdgpyq_rbo2XWUqmmG1iJU6-_a2O8xJBnQwbvRGOGKrvTzjtXpMQ13MqZPHh3K9fjfWM8eB1r7XyfWQU8LvHQhheT0hQ/w256-h256-p-k-no-nu/Container%20(2).png',
          productName: '1st Prod'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage:
              'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgTe3u20vdL_c3oks66u3WZMyhC5DrWNdPelfY944-evBM0FTscnrWC47ktwEv4mtA7S_QuEW9oFsuzd8JNIdVeKnYFLt2d-msjRa-I9Jl93yRBXDRz2MCL_avXCow688V00SbPiYTJY-oMxJsgbHuMzVv5J4TDBdIbxPNTj_BMvbuy5ICAdX-JCjSncg/w256-h256-p-k-no-nu/Container.png',
          productName: '2nd Prod'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage:
              'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiK2RKPjW-AnaRJmzJtLNT2rTvdv-DGNfA0wVlNEzmz8xi6_zb-KyZP4H_uFvqMsuBBhaAqpph0lKgYNmKRs2VCM8AfxFZRr2Qqi950YOmZ4rwUi0ib9MJDo--u5Znaa339J2el_1LCwaxZqtlgeHd_ZVyI_EeLfmARx-lVdO4yUL9gNHi3KnBNNin_1A/w256-h256-p-k-no-nu/Restaurant%20App%20-%20Checkout_page%20(1).png',
          productName: '3rd Prod'),
    ];
    products.value = productResult;
  }
}
