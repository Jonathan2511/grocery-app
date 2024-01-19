// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class CheckoutItem extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  final String weight;

  const CheckoutItem({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.weight,
  }) : super(key: key);

  @override
  State<CheckoutItem> createState() => _CheckoutItemState();
}

class _CheckoutItemState extends State<CheckoutItem> {
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
      child: Material(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.fitWidth, image: NetworkImage(image)),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.5,
                          color: AppTheme.lightPrimaryColor,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        weight,
                        style: TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'x1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.lightPrimaryColor),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
