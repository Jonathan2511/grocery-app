import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:my_grocery/theme/app_theme.dart';
import 'package:my_grocery/view/cart/component/checkout_item.dart';
import 'package:my_grocery/view/cart/component/delivery_method.dart';
import 'package:my_grocery/view/cart/component/shipping_address.dart';
import 'package:my_grocery/view/cart/component/store_name.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
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
            const ShippingAddress(),
            const SizedBox(
              height: 10,
            ),
            const StoreName(),
            const CheckoutItem(
              image:
                  'https://media.istockphoto.com/id/505207430/photo/fresh-raw-beef-steak.jpg?s=612x612&w=0&k=20&c=QxOege3Io4h1TNJLtGYh71rxb29p1BfFcZvCipz4WVY=',
              title: 'Daging Sapi Potong',
              price: 'Rp 90000',
              weight: '1kg',
            ),
            const CheckoutItem(
              image:
                  'https://img.freepik.com/premium-photo/raw-chicken-carcass-cutting-board-isolated-white-background_109285-9516.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704672000&semt=ais',
              title: 'Daging Ayam',
              price: 'Rp 35000',
              weight: '1kg',
            ),
            const CheckoutItem(
              image:
                  'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//99/MTA-3853476/lahap_lahap-beras-premium-5-kg_full02.jpg',
              title: 'Beras Lahap Premium',
              price: 'Rp 70000',
              weight: '5kg',
            ),
            const SizedBox(
              height: 10,
            ),
            const DeliveryMethod(),
            const SizedBox(
              height: 55,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
          ),
          onPressed: () {
            EasyLoading.showSuccess("Order Processed");
            Navigator.of(Get.overlayContext!).pop();
            Navigator.of(Get.overlayContext!).pop();
          },
          child: const Padding(
            padding: EdgeInsets.all(6.0),
            child: Text('Make Order', style: TextStyle(fontSize: 14)),
          ),
        ),
      ),
    );
  }
}
