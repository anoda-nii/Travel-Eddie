import 'package:flutter/material.dart';
import 'package:travel_eddie_k/constants.dart';
import 'package:travel_eddie_k/drawer.dart';
import 'package:travel_eddie_k/screens/home_screen/components/body.dart';


class HomeScreen extends StatelessWidget {
  static String routename = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
         title: Text("Eddie Kay"),
      ),
      drawer: drawer(context),
      body: Body(),
    );
  }
}
