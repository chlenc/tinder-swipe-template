import 'package:flutter/material.dart';
import 'package:flutterapp/utils/hexToColor.dart';

class PageTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: <Widget>[
            Container(
              child: Text(
                "For you",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: hexToColor('#4E4B6F')),
              ),
              alignment: Alignment.center,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
