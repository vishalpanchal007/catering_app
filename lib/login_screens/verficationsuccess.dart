import 'dart:async';

import 'package:catering_app/home_screen.dart';
import 'package:flutter/material.dart';

class Verificationsuccess extends StatefulWidget {
  const Verificationsuccess({super.key});

  @override
  State<Verificationsuccess> createState() => _VerificationsuccessState();
}

class _VerificationsuccessState extends State<Verificationsuccess> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => home_screen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image 41.png'),
          fit: BoxFit.cover
        )
      ),
      child: Image.asset('assets/Group 555.png'),
    );
  }
}
