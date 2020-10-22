import 'package:travel_eddie_k/screens/home_screen/components/btnOptions.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
            BtnOptions(
              label: "Trips",
              color: Color(0xFFFf89380),
            ),
             BtnOptions(
              label: "Order",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Buses",
              color: Color(0xFFF9b9ba0),
            ),
             BtnOptions(
              label: "Previous Trips",
              color: Color(0xFFF9b9ba0),
            )
        ],
      ),
    );
  }
}