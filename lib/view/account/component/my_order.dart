import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';
import 'package:my_grocery/view/account/component/order_complete.dart';
import 'package:my_grocery/view/account/component/order_status.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Order'),
        backgroundColor: AppTheme.lightBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const OrderStatus(),
            const OrderComplete()
          ],
        ),
      ),
    );
  }
}
