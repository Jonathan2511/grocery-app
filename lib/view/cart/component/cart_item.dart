// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class CartItem extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String weight;

  const CartItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.weight,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  late String image;
  late String title;
  late String price;
  late String weight;

  @override
  void initState() {
    super.initState();
    image = widget.image;
    title = widget.title;
    price = widget.price;
    weight = widget.weight;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight, image: NetworkImage(image)),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: AppTheme.lightPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    weight,
                    style: TextStyle(
                      fontSize: 15.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(Icons.remove,
                                  color: Colors.grey.shade800),
                            ),
                            Text(
                              '1',
                              style: TextStyle(color: Colors.grey.shade800),
                            ),
                            InkWell(
                              onTap: () {},
                              child:
                                  Icon(Icons.add, color: Colors.grey.shade800),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 138,
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
