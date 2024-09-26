import 'package:catering_app/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Initializing Firebase...');
  try {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: 'AIzaSyCmgjUAqXjXcP35t3vwmLrMDBLmyuVMt3k',
            appId: '1:119989582397:android:d3c93c9d2e4978f5d5c854',
            messagingSenderId: '119989582397',
            projectId: 'catering-app-77f4b')
    );
    print('Firebase initialized successfully.');
    runApp(MyApp());
  } catch (e) {
    print('Error initializing Firebase: $e');
  }
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
