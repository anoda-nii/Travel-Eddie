import 'package:flutter/material.dart';
import 'package:travel_eddie_k/screens/home_screen/widgets/options.dart';
import 'package:travel_eddie_k/screens/home_screen/widgets/boxDestination.dart';
import 'package:travel_eddie_k/screens/home_screen/widgets/selectway.dart';
import 'package:travel_eddie_k/screens/home_screen/widgets/selectOptions.dart';
//import 'package:travel_eddie_k/screens/home_screen/widgets/recommendation.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFf6f5fb),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 40, bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Options(),
                    SizedBox(height: 20),
                    BoxDestination(),
                    SizedBox(height: 20),
                    BoxDestination(),
                    SizedBox(height: 20),
                    BoxDestination(),
                    SizedBox(height: 20),
                    BoxDestination(),
                    SizedBox(height: 22),
                    SelectWay(),
                    SizedBox(height: 25),
                    SelectOptions(),
                    SizedBox(height: 16),
                    //Recommendation()
                ],
              ),
            ),
          ),
        ),
    );
  }
}