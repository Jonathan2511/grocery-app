import 'package:flutter/material.dart';
import 'package:my_grocery/controller/controllers.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          InkWell(
            onTap: () {
              if (title == "Popular Product") {
                dashboardController.updateIndex(1);
              } else if (title == "Popular Category") {
                dashboardController.updateIndex(2);
              }
            },
            child: const Text(
              "See More",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
