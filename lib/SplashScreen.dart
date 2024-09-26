import 'dart:async';

import 'package:catering_app/login_screens/signupscreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SplashScreenApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/splash screen.png",
          fit: BoxFit.cover, width: double.infinity),
    );
  }
}

class SplashScreenApp extends StatefulWidget {
  @override
  _SplashScreenAppState createState() => _SplashScreenAppState();
}

class _SplashScreenAppState extends State<SplashScreenApp> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              SplashScreen(
                image: "assets/skip.jpeg",
                imagecenter: "assets/Frame 3835.png",
              ),
              SplashScreen(
                image: "assets/skip1.jpeg",
                imagecenter: "assets/Group 50.png",
              ),
              SplashScreen(
                image: "assets/skip2.jpeg",
                imagecenter: "assets/Group 51.png",
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStatePropertyAll(1),
                  fixedSize: MaterialStatePropertyAll(Size(Checkbox.width*6 , 20)),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orange.shade600)),
              onPressed: () {
                if (_currentPage < 2) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                  print("Navigating to the next page");
                } else {
               //   print("Navigating to the login page");
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signupscreen(),
                      ));
                }
              },
              child: Text(_currentPage < 2 ? "Next" : "Get Start"),
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: 20.0,
            child: Row(
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 15.0,
                  height: 15.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.orange.shade600
                        : Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  final String image;
  final String imagecenter;

  SplashScreen({required this.image, required this.imagecenter});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(image, width: double.infinity, fit: BoxFit.cover),
        Center(
          child: Image.asset(imagecenter,
              width: double.infinity, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
