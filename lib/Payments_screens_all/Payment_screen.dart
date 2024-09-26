import 'package:catering_app/Payments_screens_all/Payment_method.dart';
import 'package:flutter/material.dart';

class Confirm_orderscreen extends StatefulWidget {
  const Confirm_orderscreen({super.key});

  @override
  State<Confirm_orderscreen> createState() => _Confirm_orderscreenState();
}

class _Confirm_orderscreenState extends State<Confirm_orderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              alignment: Alignment.centerRight,
              icon: Icon(Icons.arrow_back_ios_new, size: 35),
              onPressed: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: Colors.orange.shade800),
                  Text(
                    "    Deliver At",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.367,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Aries Heights',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                runAlignment: WrapAlignment.spaceEvenly,
                children: [Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '    YOUR ORDER',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '    Khodal Caterers',
                        )
                      ],
                    ),
                  ),
                  Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "      Total Number Of Plates",
                      ),
                      Text(
                        '200',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Colors.orange.shade800),
                      ),
                      Text(
                        "    ADD A NOTE",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),],
              ),
            ),
            Container(
              color: Colors.orange.shade800,
              height: MediaQuery.of(context).size.height * 0.06,
              width: double.infinity,
              child: Center(
                child: Text(
                  'USE COUPONS TO AVAIL OFFERS%',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.150,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 65),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("TOTAL"),
                          Text("₹    400"),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Taxes & charges "),
                          Text("₹    800"),
                        ],
                      ),
                      Divider(
                          height: MediaQuery.of(context).size.height * 0.04,
                          color: Colors.black,
                          thickness: 3),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("To Pay ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text("₹    400"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Text("Review your order and address details to avoidcancellations",textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.150,
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15),),
                child: Wrap(
                  runAlignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Note:", style: TextStyle(color: Colors.red),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(" If you cancel within 15 days of placing orderorder,"
                          "   a 100% refund will be issued. No refund forcancellations made after 15 days.",
                        overflow: TextOverflow.visible,),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ElevatedButton(

                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll( Colors.orange.shade800,),
                  maximumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                    minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
                    alignment: Alignment.center),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethodScreen(),));
                },
                child: Text("Confirm Order",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
