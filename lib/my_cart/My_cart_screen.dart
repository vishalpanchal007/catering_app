import 'package:catering_app/Payments_screens_all/Payment_screen.dart';
import 'package:catering_app/home_screen.dart';
import 'package:catering_app/my_cart/Items_Model.dart';
import 'package:flutter/material.dart';

class My_cart_screen extends StatefulWidget {
  const My_cart_screen({super.key});

  @override
  State<My_cart_screen> createState() => My_cart_screenState();
}

class My_cart_screenState extends State<My_cart_screen> {
  List<ItemsModel> ItemsmodelList = [
    ItemsModel(
      Image: "assets/Rectangle 151.png",
      Name: 'Panir-Mixveg',
      Details: "Veg",
      price: 100,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 159.png",
      Name: 'Sabji',
      Details: "Veg",
      price: 200,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 153.png",
      Name: 'Salad',
      Details: "Veg",
      price: 300,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 59.png",
      Name: 'Chhole-Bhature',
      Details: "Veg",
      price: 400,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 151.png",
      Name: 'Pasta',
      Details: "Veg",
      price: 500,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 57.png",
      Name: 'Momos',
      Details: "Veg",
      price: 600,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 55.png",
      Name: 'Idli-Dhosa',
      Details: "Veg-NonVeg",
      price: 700,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 47.png",
      Name: 'Gujarti Thali',
      Details: "Veg",
      price: 800,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 53.png",
      Name: 'Khaman',
      Details: "Veg",
      price: 900,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 157.png",
      Name: 'Fruits',
      Details: "Veg",
      price: 1000,
      quantity: 0,
    ),
    ItemsModel(
      Image: "assets/Rectangle 155.png",
      Name: 'vegetables',
      Details: "Veg",
      price: 1100,
      quantity: 0,
    ),
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
                  padding: const EdgeInsets.only(left: 108.0),
                  child: Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ItemsmodelList.length,
                itemBuilder: (context, index) {
                  final ItemsModel items = ItemsmodelList[index];
                  return Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .420,
                          child: Image(
                            image: AssetImage(items.Image),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    items.Name,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                ],
                              ),
                              Text(
                                  'quantity ${items.quantity} + \₹${items.price}',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFFFA7700),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.remove, size: 25),
                                      onPressed: () {
                                        setState(() {
                                          if (items.quantity > 0) {
                                            items.quantity--;
                                          }
                                        });
                                      },
                                    ),
                                    Text('${items.quantity}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    IconButton(
                                      icon: Icon(Icons.add, size: 25),
                                      onPressed: () {
                                        setState(() {
                                          items.quantity++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Total: \₹${calculateTotal()}',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              style: ButtonStyle(
              //  fixedSize: MaterialStatePropertyAll(Size(180, 100)),
                backgroundColor: MaterialStatePropertyAll(Color(0xFFFA7700)),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
              //  fixedSize: MaterialStatePropertyAll(Size(180, 100)),
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFFA7700),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Confirm_orderscreen(),));
              },
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double calculateTotal() {
    double total = 0.0;
    for (var item in ItemsmodelList) {
      total += item.quantity * item.price;
    }
    return total;
  }
}
