import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({super.key});

  @override
  State<OrderComplete> createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete> {
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
                          Icons.shopping_bag_outlined,
                          size: 37,
                          color: AppTheme.lightPrimaryColor,
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MyGrocery',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '15 Jan 2024',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orangeAccent,
                            ),
                            child: const Text('Finished',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12))),
                      ],
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://images.tokopedia.net/img/cache/700/VqbcmM/2022/7/29/15a8d9de-4947-4ba0-96aa-b07a2476bc53.png')),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nescafé Black Ice',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.5,
                                color: AppTheme.lightPrimaryColor,
                              ),
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              '+1 More Items',
                              style: TextStyle(
                                fontSize: 14.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'Rp 27500',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
