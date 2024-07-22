import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_grocery/controller/controllers.dart';
import 'package:my_grocery/theme/app_theme.dart';
import 'package:my_grocery/view/cart/checkout.dart';
import 'package:my_grocery/view/cart/component/cart_item.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: AppTheme.lightBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            const CartItem(
              image:
                  'https://media.istockphoto.com/id/505207430/photo/fresh-raw-beef-steak.jpg?s=612x612&w=0&k=20&c=QxOege3Io4h1TNJLtGYh71rxb29p1BfFcZvCipz4WVY=',
              title: 'Daging Sapi Potong',
              price: 'Rp 90000',
              weight: '1kg',
            ),
            const CartItem(
              image:
                  'https://img.freepik.com/premium-photo/raw-chicken-carcass-cutting-board-isolated-white-background_109285-9516.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704672000&semt=ais',
              title: 'Daging Ayam',
              price: 'Rp 35000',
              weight: '1kg',
            ),
            const CartItem(
              image:
                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//99/MTA-3853476/lahap_lahap-beras-premium-5-kg_full02.jpg',
              title: 'Beras Lahap Premium',
              price: 'Rp 70000',
              weight: '5kg',
            ),
            const SizedBox(
              height: 273,
            ),
            const Divider(
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                children: [
                  Text(
                    'Total:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Rp 195000',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
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
            if (authController.user.value != null) {
              Get.to(() => const Checkout());
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(milliseconds: 1000),
                content: const Text(
                  'Please Login First',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: AppTheme.lightPrimaryColor,
              ));
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text('Checkout', style: TextStyle(fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
