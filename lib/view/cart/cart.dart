import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';
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
          const CartItem(
            image:
                'https://www.tastingtable.com/img/gallery/the-cut-of-meat-steak-tips-come-from/intro-1672422211.jpg',
            title: 'Daging Sapi Fresh',
            price: 'Rp 90000',
            weight: '1kg',
          ),
          const CartItem(
            image:
                'https://www.hondacengkareng.com/cover-body-motor-honda/cover-body-sticker-striping-honda-vario-125-esp-k60/honda-vario-125-esp-k60-black-green/',
            title: 'Vario 125',
            price: 'Rp 80000',
            weight: '125cc',
          ),
          const CartItem(
            image:
                'https://img.overclockers.co.uk/content/images/pdp/refract/Jade-refract_panel_on-square.jpg',
            title: 'PC Geming',
            price: 'Rp 99999',
            weight: 'Gemink',
          ),
          // INI UNTUK NAMBAH BARU

          // INI BOTTOM NYA
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
