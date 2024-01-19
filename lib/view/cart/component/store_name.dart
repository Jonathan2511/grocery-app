import 'package:flutter/material.dart';
import 'package:my_grocery/theme/app_theme.dart';

class StoreName extends StatelessWidget {
  const StoreName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Row(
        children: [
          Icon(
            Icons.store,
            color: AppTheme.lightPrimaryColor,
          ),
          const SizedBox(
            width: 2,
          ),
          const Text(
            "MyGrocery",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
