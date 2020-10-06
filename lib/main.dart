import 'package:flutter/material.dart';
import 'package:travel_eddie_k/routes.dart';
import 'package:travel_eddie_k/screens/splash/splash_screen.dart';
import 'package:travel_eddie_k/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}

class AuthService {
  var onAuthStateChanged;

  sinInWithEmailAndPassword(String email, String password) {}

  createUserWithEmailAndPassword(String email, String password) {}

  registerWithEmailAndPassword(String email, String password) {}

  registerUserWithEmailAndPassword(String email, String password) {}
}
