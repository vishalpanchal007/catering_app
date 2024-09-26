import 'package:catering_app/caterers_screen.dart';
import 'package:flutter/material.dart';

class Detailsscreen extends StatefulWidget {
  const Detailsscreen({super.key});

  @override
  State<Detailsscreen> createState() => _DetailsscreenState();
}

class _DetailsscreenState extends State<Detailsscreen> {
  int selectIndex = 0;
  final List<Map<String, dynamic>> dataList = [
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Mango Caterers',
      'icon': "icons/Vector2.png",
      'description': ' ₹ 499 onwards',
      'location': '📍Paldi,Ahmedabad',
      'price': 1000.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Radhe Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 299 onwards',
      'location': '📍Vastrapur,Ahmedabad',
      'price': 900.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'Maaa Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 599 onwards',
      'location': '📍Ahmedabad',
      'price': 800.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Vinayak Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2599 onwards',
      'location': '📍Hansol,Ahmedabad',
      'price': 700.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Raj Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 1599 onwards',
      'location': '📍Gandhinagar,Ahmedabad',
      'price': 600.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 55.png',
      'title': 'laxami Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2000 onwards',
      'location': '📍Naranpura,Ahmedabad',
      'price': 500.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'rodra Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 1005 onwards',
      'location': '📍Maninagar,Ahmedabad',
      'price': 400.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 57.png',
      'title': 'Mavajat Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 555 onwards',
      'location': '📍Nikol,Ahmedabad',
      'price': 300.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 53.png',
      'title': 'Jalaram Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 100 onwards',
      'location': '📍Bopal',
      'price': 200.0,
      'quantity': 1,
    },
    {
      'image': 'assets/Rectangle 51c.png',
      'title': 'Raju Caterers',
      'icon': "icons/Vector2.png",
      'description': '₹ 2222 onwards',
      'location': '📍Sherpura',
      'price': 100.0,
      'quantity': 1,
    },
  ];
  List<String> images = [
    'assets/Ellipse 53.png',
    'assets/Ellipse 54.png',
    'assets/Ellipse 55.png',
    'assets/Ellipse 56.png',
  ];
  bool isSearchVisible = false;

  void adjustPrice(int index, bool isIncrease) {
    setState(() {
      double currentPrice = dataList[index]['price'];
      dataList[index]['price'] = isIncrease
          ? currentPrice + currentPrice
          : currentPrice - currentPrice;
    });
  }

  double _total = 0.0;

  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  void _incrementQuantity(int index) {
    setState(() {
      dataList[index]['quantity']++;
      _calculateTotal();
    });
  }

  void _decrementQuantity(int index) {
    if (dataList[index]['quantity'] > 1) {
      setState(() {
        dataList[index]['quantity']--;
        _calculateTotal();
      });
    }
  }

  void _calculateTotal() {
    double total = 0.0;
    for (var item in dataList) {
      total += item['price'] * item['quantity'];
    }
    setState(() {
      _total = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, size: 25),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Caterers_screen(),));
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
            Image(image: AssetImage("assets/Rectangle 47.png")),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                  "Details :Discription  Discription  Discription "
                  " Discription Discription Discription Discription",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(120, 40),
                  maximumSize: Size(120, 40),
                  backgroundColor: Colors.orange.shade800,
                  foregroundColor: Colors.white),
              onPressed: () {
                _showDateAlertDialog(context);
              },
              child: Text(
                'Date',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(top: 18),
                itemCount: images.length,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage(images[index])),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  final Map<String, dynamic> items = dataList[index];
                  return Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .420,
                          child: Image(
                            image: AssetImage(items['image']),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    items['title'],
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Image.asset(
                                    items['icon'],
                                    color: Color(0xFFFA7700),
                                  ),
                                ],
                              ),
                              Text(
                                items['description'],
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Text(
                                items['location'],
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                              Text(
                                  '${dataList[index]['price'].toString()} x ${dataList[index]['quantity'].toString()}'),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {
                                      _incrementQuantity(index);
                                    },
                                  ),
                                  Text(dataList[index]['quantity'].toString()),
                                  IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () {
                                      _decrementQuantity(index);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showDateAlertDialog(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
    );

    if (picked != null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Selected Date'),
            content: Text('You selected: ${picked.toString()}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }
} // Row(
//   mainAxisSize: MainAxisSize.min,
//   children: [
//     IconButton(
//       icon: Icon(Icons.add),
//       onPressed: () => adjustPrice(index, true),
//     ),
//     IconButton(
//       icon: Icon(Icons.remove),
//       onPressed: () => adjustPrice(index, false),
//     ),
//   ],
// ),
