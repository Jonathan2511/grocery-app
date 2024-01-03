import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: AppTheme.lightBackgroundColor,
      ),
      body: Column(
        children: [
          Container(
            height: 2,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
          ),
          // Your body content...
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text('Checkout', style: TextStyle(fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
