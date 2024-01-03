import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Anggota Kelompok:",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            "Agustian Prakoso\nAlfino Rizky Afandie\nFajar Mahardika\nJonathan Aditya Puryanto\nMuhammad Afriwaldi Rizaldi\nRifqi Adi Prasetya\nRizqi Jalal",
            style: TextStyle(fontSize: 17),
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
