import 'package:catering_app/Profile_screen.dart';
import 'package:catering_app/caterers_screen.dart';
import 'package:catering_app/favorites_screen.dart';
import 'package:catering_app/my_cart/My_cart_screen.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_screenState();
  }
}

class home_screenState extends State<home_screen> {
  int selectIndex = 0;
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Mango Caterers',
      'icon': "icons/heart1.png",
      'description': ' ₹ 499 onwards',
      'location': '📍Paldi,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Radhe Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 299 onwards',
      'location': '📍Vastrapur,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Maaa Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 599 onwards',
      'location': '📍Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Vinayak Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 2599 onwards',
      'location': '📍Hansol,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Raj Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 1599 onwards',
      'location': '📍Gandhinagar,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'laxami Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 2000 onwards',
      'location': '📍Naranpura,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'rodra Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 1005 onwards',
      'location': '📍Maninagar,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 57.png',
      'title': 'Mavajat Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 555 onwards',
      'location': '📍Nikol,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Jalaram Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 100 onwards',
      'location': '📍Bopal'
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Raju Caterers',
      'icon': "icons/heart1.png",
      'description': '₹ 2222 onwards',
      'location': '📍Sherpura',
    },
  ];

  final List<String> imageUrls = [
    'assets/Rectangle 49.png',
    'assets/Rectangle 50.png',
    'assets/Rectangle 491.png',
    'assets/Rectangle 50.png',
    'assets/Rectangle 491.png',
    'assets/Rectangle 50.png',
    'assets/Rectangle 491.png',
    'assets/Rectangle 50.png',
    'assets/Rectangle 491.png',
    'assets/Rectangle 50.png',
  ];
  final List<String> imageTitles = [
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
    'Caterers Name',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Search"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Image(
                image: AssetImage("assets/Rectangle 47.png"),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210),
              child: Text(
                "Order By Services",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 273),
              child: Text(
                "Category",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color(0xFFFA7700),
                  ),
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Veg",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                ),
                Opacity(
                  opacity: 0.6,
                  alwaysIncludeSemantics: false,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Color(0xFFFA7700),
                    ),
                    width: MediaQuery.of(context).size.width * 0.38,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Non-Veg",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text("Top Caterers",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Caterers_screen(),
                        ));
                  },
                  child: Text("See All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black26)),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: imageUrls.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        print('Image ${index + 1} tapped!');
                      },
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.445,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage(imageUrls[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            imageTitles[index],
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            BottomNavigationBar(
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
                          ));
                    },
                    icon: Icon(
                      Icons.home,
                      size: 50,
                      color: Color(0xFFFA7700),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  label: "",
                  icon: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => My_cart_screen(),
                          ));
                    },
                    icon: ImageIcon(AssetImage("icons/Group.png"),
                        color: Colors.black),
                  ),
                ),
                BottomNavigationBarItem(
                    label: "",
                    icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => favorites(),
                            ));
                      },
                      icon: ImageIcon(AssetImage("icons/Vector1.png"),
                          color: Colors.black),
                    )),
                BottomNavigationBarItem(
                    label: "",
                    icon: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profilescreen()));
                      },
                      icon: ImageIcon(AssetImage("icons/Vector.png"),
                          color: Colors.black),
                    ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
