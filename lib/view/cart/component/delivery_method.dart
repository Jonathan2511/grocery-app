import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class DeliveryMethod extends StatelessWidget {
  const DeliveryMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Change color as needed
            width: 1.0, // Change border width as needed
          ),
          borderRadius: BorderRadius.circular(10.0), // Set corner radius
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Add inner padding
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.local_shipping_outlined,
                          color: AppTheme.lightPrimaryColor,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          'Reguler',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.5),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text('J&T Free Shipping'),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20,
                ),
                onPressed: () {},
                color: AppTheme.lightPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
