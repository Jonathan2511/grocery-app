import 'package:flutter/material.dart';
import 'package:my_grocery/model/product.dart';
import 'package:my_grocery/view/home/components/popular_product/popular_product_card.dart';

class PopularProduct extends StatelessWidget {
  final List<Product> popularProducts;
  const PopularProduct({Key? key, required this.popularProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 234,
        padding: const EdgeInsets.only(right: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: popularProducts.length,
          itemBuilder: (context, index) =>
              PopularProductCard(product: popularProducts[index]),
        ));
  }
}
