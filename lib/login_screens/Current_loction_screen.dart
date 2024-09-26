import 'package:catering_app/login_screens/Loction_screen.dart';
import 'package:flutter/material.dart';

class Current_loction_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Current_loction_screenState();
  }
}

class Current_loction_screenState extends State<Current_loction_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Locationscreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 25,
                    )),
                Text(
                  "Enter your area apartment name",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    prefixIcon: Icon(Icons.search_rounded,),
                    prefixIconColor: Colors.orange.shade600,
                    suffixIconColor: Colors.orange.shade600,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange.shade600)
                    ),
                    hintText: "Search",fillColor: Colors.orange.shade600),
              ),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Locationscreen(),
                        ),
                      );
                    },
                    icon: Image.asset("assets/share .jpeg",width: 30,)),
                Text(
                  "Use my current location",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color:Colors.orange.shade600),
                ),
              ],
            ),
            Divider(color: Colors.black38,
             indent: 15,
            endIndent: 15,
            height: 40,)
          ],
        ),
      ),
    );
  }
}
