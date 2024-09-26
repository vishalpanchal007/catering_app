import 'package:catering_app/Details_screen.dart';
import 'package:catering_app/home_screen.dart';
import 'package:flutter/material.dart';

class Caterers_screen extends StatefulWidget {
  @override
  State<Caterers_screen> createState() => Caterers_screenState();
}

class Caterers_screenState extends State<Caterers_screen> {
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Mango Caterers',
      'icon': "icons/Vector2.png",
      'description': ' ₹ 499 onwards',
      'location': '📍Paldi,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Radhe Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 299 onwards',
      'location': '📍Vastrapur,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Maaa Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 599 onwards',
      'location': '📍Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Vinayak Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2599 onwards',
      'location': '📍Hansol,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Raj Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 1599 onwards',
      'location': '📍Gandhinagar,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'laxami Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2000 onwards',
      'location': '📍Naranpura,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'rodra Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 1005 onwards',
      'location': '📍Maninagar,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 57.png',
      'title': 'Mavajat Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 555 onwards',
      'location': '📍Nikol,Ahmedabad',
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Jalaram Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 100 onwards',
      'location': '📍Bopal'
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Raju Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2222 onwards',
      'location': '📍Sherpura',
    },
  ];
  bool isSearchVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 25),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home_screen(),));
                  },
                ),
                Center(
                    child: Text(
                  'Caterers',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
                IconButton(
                  icon: Icon(Icons.search, size: 25),
                  onPressed: () {
                    setState(() {
                      isSearchVisible = !isSearchVisible;
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  final Map<String, dynamic> cardData = dataList[index];
                  return buildCustomCard(cardData);
                },
              ),
            ),
          ],
        ),
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
              child: Image(
            image: AssetImage(cardData['image']),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                            fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image.asset(cardData['icon']),
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
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color(0xFFFA7700),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Detailsscreen(),));
                    },
                    child: Text(
                      "View dishes",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
