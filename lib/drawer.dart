import 'package:flutter/material.dart';
import 'package:travel_eddie_k/constants.dart';
import 'package:travel_eddie_k/screens/sign_in/sign_in_screen.dart';

import 'services/auth_service.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  kPrimaryColor,
                  const Color(0xfffffff0)
                ], // primary app color to black
                // tileMode: TileMode.repeated, // repeats the gradient over the canvas
              ),
            ),
            child: Container(
              child: Column(
                children: [
                  Material(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/bluebus.png',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Eddie Kay",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ],
              ),
            )),
        CustomListTile(Icons.person, 'Profile', () => {}),
        CustomListTile(Icons.add_alert, 'Book a Bus', () => {}),
        CustomListTile(Icons.local_shipping, 'Logistics', () => {}),
        CustomListTile(
          Icons.person,
          'Logout',
          () {
            // AuthServices.logOut();
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => SignInScreen()));
          },
        )
      ],
    ),
  );
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
        child: InkWell(
          splashColor: kPrimaryColor,
          onTap: onTap,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Text(
                      text,
                      style: TextStyle(fontSize: 17, color: kTextColor),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
