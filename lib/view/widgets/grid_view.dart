import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/shopping_controller.dart';

class GridViewOverView extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String title;

  const GridViewOverView(
      {required this.id, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(title),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
      child: GestureDetector(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
