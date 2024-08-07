import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:my_grocery/model/product.dart';
import 'package:my_grocery/theme/app_theme.dart';

import 'package:my_grocery/view/product_details/components/product_carousel_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product})
      : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  NumberFormat formatter = NumberFormat('00');
  int _qty = 1;
  int _tagIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductCarouselSlider(
              images: widget.product.images,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.product.name,
                  style: TextStyle(
                      fontSize: 24,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                  'Rp ${(widget.product.tags![_tagIndex].price * double.parse(_qty.toStringAsFixed(0))).toString().replaceAll(RegExp(r"([.]*0+)(?!.*\d)"), "")}',
                  style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (_qty > 1) {
                              setState(() {
                                _qty--;
                              });
                            }
                          },
                          child: Icon(Icons.remove,
                              size: 24, color: Colors.grey.shade800),
                        ),
                        Text(
                          formatter.format(_qty),
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade800),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _qty++;
                            });
                          },
                          child: Icon(Icons.add,
                              size: 24, color: Colors.grey.shade800),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (_tagIndex > 0) {
                              setState(() {
                                _tagIndex--;
                              });
                            }
                          },
                          child: Icon(Icons.remove,
                              size: 24, color: Colors.grey.shade800),
                        ),
                        Text(
                          widget.product.tags![_tagIndex].title,
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade800),
                        ),
                        InkWell(
                          onTap: () {
                            if (_tagIndex !=
                                (widget.product.tags!.length - 1)) {
                              setState(() {
                                _tagIndex++;
                              });
                            }
                          },
                          child: Icon(Icons.add,
                              size: 24, color: Colors.grey.shade800),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'About this Product:',
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.product.description,
                style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            backgroundColor: WidgetStateProperty.all<Color>(
                Theme.of(context).primaryColor),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              duration: const Duration(milliseconds: 700),
              content: const Text(
                'Added to Cart',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: AppTheme.lightPrimaryColor,
            ));
          },
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text('Add to Cart', style: TextStyle(fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
