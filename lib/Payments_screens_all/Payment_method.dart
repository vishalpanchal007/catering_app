import 'package:catering_app/Payments_screens_all/Paymentsuccesscreen.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  double screenWidth = 600;
  double screenHeight = 400;
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        border:  _type == 1
                            ? Border.all(width: 1,color:Color(0xFFEF6C00))
                            : Border.all(width: 3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xFFEF6C00),
                                ),
                                Text(
                                    'Amazon Pay',
                                    style: _type == 1
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    )
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/amo.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        border:  _type == 2
                            ? Border.all(width: 1,color:Color(0xFFEF6C00))
                            : Border.all(width: 3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xFFEF6C00),
                                ),
                                Text(
                                    'Debit Card',
                                    style: _type == 2
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    )
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              'assets/visa.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(width: 3),
                            Image.asset(
                              'assets/o.png',
                              width: 50,
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        border:  _type == 3
                            ? Border.all(width: 1,color:Color(0xFFEF6C00))
                            : Border.all(width: 3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xFFEF6C00),
                                ),
                                Text(
                                    'Paytm',
                                    style: _type == 3
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    )
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/paytm.png',
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        border:  _type == 4
                            ? Border.all(width: 1,color:Color(0xFFEF6C00))
                            : Border.all(width: 3,color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: Color(0xFFEF6C00),
                                ),
                                Text(
                                    'Google Pay',
                                    style: _type == 4
                                        ? TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black)
                                        : TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    )
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/gpay.png',
                              width: 70,
                              height: 70,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "₹800",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Taxes & Charges",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "₹150",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Divider(
                    height: 30,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "₹950",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.orange.shade800
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Paymentsuccesscreen()));
                      },
                      child: Text('PLACE ORDER',
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
                ],
              ),
            ),
          )
      ),
    );
  }
}