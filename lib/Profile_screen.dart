import 'package:catering_app/favorites_screen.dart';
import 'package:catering_app/home_screen.dart';
import 'package:catering_app/my_cart/My_cart_screen.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  double screenWidth = 600;
  double screenHeight = 400;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, size: 35),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 108.0),
                child: Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/Jason-Momoa-2021.png'),
                      ),
                    )),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  "JASON MOMOA",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                Text('Jason momoa001@gmail.com'),
                SizedBox(height: screenHeight * 0.03),
                Divider(),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.orange.shade800),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '       Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.settings)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    border: Border.all(color: Colors.orange.shade800),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '       My Orders',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.shopping_bag)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    border: Border.all(color: Colors.orange.shade800),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '       Notifications',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.notifications)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, right: 10, left: 10),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    border: Border.all(color: Colors.orange.shade800),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '       Logout',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.logout)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        backgroundColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => home_screen(),
                    ),);
              },
              icon: Icon(
                Icons.home,
                size: 45 ,
                color:Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => My_cart_screen(),));
              },
              icon: ImageIcon(AssetImage("icons/Group.png"), color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            label: "",
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => favorites(),));
                },
                icon: ImageIcon(AssetImage("icons/Vector1.png"), color: Colors.black),
              )
          ),
          BottomNavigationBarItem(

            label: "",
            icon: ImageIcon(AssetImage("icons/Vector.png"),
              color: Color(0xFFFA7700),
            ),
          )
        ],
      ),
    );
  }
}
