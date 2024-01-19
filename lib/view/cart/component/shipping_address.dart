import 'package:flutter/material.dart';
import 'package:my_grocery/controller/controllers.dart';
import 'package:my_grocery/theme/app_theme.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

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
                          Icons.location_on_outlined,
                          color: AppTheme.lightPrimaryColor,
                        ),
                        const Text(
                          'Shipping Address',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.5),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                          'Home Address • ${authController.user.value!.fullName}'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                          "Jl. Arjuna Utara No.9, Duri Kepa, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta "),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                onPressed: () {
                  // Handle button press (e.g., navigate back)
                },
                color: AppTheme.lightPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
