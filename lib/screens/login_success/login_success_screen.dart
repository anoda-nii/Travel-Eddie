import 'package:flutter/material.dart';
import 'package:travel_eddie_k/drawer.dart';
import '../../constants.dart';
import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("WARNING"),
                    content: Text("Are you sure you want to exit?"),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Yes"),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                        child: Text("No"),
                      ),
                    ],
                  ));
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            //leading: SizedBox(),
            // leading sized box displays the back button or hamburger button at the top left of the screen
            title: Text("Eddie Kay"),
          ),
          drawer: drawer(context),
          body: Body(),
        ));
  }
}
