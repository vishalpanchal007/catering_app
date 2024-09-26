import 'package:catering_app/Profile_screen.dart';
import 'package:catering_app/home_screen.dart';
import 'package:catering_app/my_cart/My_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class favorites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return favoritesState();
  }
}

class favoritesState extends State<favorites> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 35),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen(),));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Text(
                    'Favorites',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Expanded(
              child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> cardData = dataList[index];
                    return buildCustomCard(cardData);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        backgroundColor: Colors.black26,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen(),));
              },
              icon: ImageIcon(AssetImage("assets/Vector4.png"),
                  color: Colors.black),
            )
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
            icon: ImageIcon(
              AssetImage("assets/Vector1.png"),
              color: Color(0xFFFA7700),
            ),
          ),

          BottomNavigationBarItem(
            label: "",
           icon: IconButton(onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => Profilescreen(),));
           }, icon:
           ImageIcon(AssetImage("assets/Vector.png"), color: Colors.black),
           )
          ),
        ],
      ),
    );
  }

  Widget buildCustomCard(Map<String, dynamic> cardData) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: MediaQuery.of(context).size.width * .420,
              child: Image(
                image: AssetImage(cardData['image']),
              )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      cardData['title'],
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      cardData['icon'],
                      color: Color(0xFFFA7700),
                    ),
                  ],
                ),
                Text(
                  cardData['description'],
                  style: TextStyle(fontSize: 14.0),
                ),
                Text(
                  cardData['location'],
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RatingBar.builder(
                      itemCount: 5,
                      allowHalfRating: true,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                      ),
                      onRatingUpdate: (value) {
                        print("object");
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
