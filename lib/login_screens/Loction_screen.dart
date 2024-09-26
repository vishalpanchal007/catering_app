import 'package:catering_app/home_screen.dart';
import 'package:catering_app/login_screens/Current_loction_screen.dart';
import 'package:flutter/material.dart';

class Locationscreen extends StatefulWidget {
  const Locationscreen({super.key});

  @override
  State<Locationscreen> createState() => _LocationscreenState();
}

class _LocationscreenState extends State<Locationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(200),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.016,
          ),
          ListTile(
            title: Text(
              "What’s your location?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                "We need your location to show available caterers & products."),
          ),
          Center(
            child: Container(
                width: Checkbox.width * 15,
                height: 350,
                child: Image.asset('assets/loction.jpeg')),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.orange.shade600),
              fixedSize:
                  MaterialStatePropertyAll(Size(Checkbox.width * 15, 20)),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => home_screen()));
            },
            child: Text(
              'Allow location access',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.016,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Current_loction_screen(),));
            },
            child: Text(
              'Enter Location Manually  ',
              style: TextStyle(fontSize: 20, color: Colors.orange.shade600),
            ),
          ),
        ],
      ),
    );
  }
}
