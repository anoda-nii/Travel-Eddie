import 'package:flutter/material.dart';
import 'package:travel_eddie_k/drawer.dart';
import '../../constants.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        //leading: SizedBox(),
        // leading sized box displays the back button or hamburger button at the top left of the screen
        title: Text("Eddie Kay"),
      ),
      drawer: drawer(context),
      body: Body(),
    );
  }
}
