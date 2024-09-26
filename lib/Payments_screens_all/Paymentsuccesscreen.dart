import 'package:catering_app/home_screen.dart';
import 'package:catering_app/my_cart/My_cart_screen.dart';
import 'package:flutter/material.dart';


class Paymentsuccesscreen extends StatefulWidget {
  const Paymentsuccesscreen({super.key});

  @override
  State<Paymentsuccesscreen> createState() => _PaymentsuccesscreenState();
}

Color themeColor = const Color(0xFFFA7700);

class _PaymentsuccesscreenState extends State<Paymentsuccesscreen> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF000000);
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Center(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,70,0,0),
                  child: Container(
                    height: 190,
                    child: Image.asset(
                      "assets/Successful purchase-pana 1.png",
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Text(
                  "PAYMENT SUCCESSFUL !",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "THANK YOU FOR ORDERING.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                  color: Colors.black,
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ORDER ID"),
                      Text("KLMNP5070"),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TOTAL"),
                      Text("₹    400"),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TAXES & CHARGES"),
                      Text("₹    150"),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("COUPONS(FIRST100)"),
                      Text("- ₹    100"),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                  color: Colors.black,
                ),
                SizedBox(height: screenHeight * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("GRAND TOTAL",style: TextStyle(fontWeight: FontWeight.w700),),
                      Text("₹    450"),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Center(
                  child: Container(
                    child: Center(child: Text('ORDER DETAILS')),
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home_screen()));
                    },
                    child: Text('CONTINUE',
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange.shade800,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),

                    ),
                  ),
                )
              ]
          ),
        )
    );
  }
}