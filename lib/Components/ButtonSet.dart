import 'package:flutter/material.dart';
import 'package:flutterapp/utils/hexToColor.dart';

class ButtonSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          children: <Widget>[
            IconWrapper(
              btn: IconButton(
                  icon: Icon(Icons.close,
                      color: hexToColor('#A29FBE'), size: 24)),
              size: 64,
            ),
            IconWrapper(
              btn: IconButton(
                  icon:
                      Icon(Icons.star, color: hexToColor('#4DD5FF'), size: 18)),
              size: 56,
            ),
            IconWrapper(
              btn: IconButton(
                  icon: Icon(Icons.favorite,
                      color: hexToColor('#FF636B'), size: 24)),
              size: 64,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        padding: EdgeInsets.only(left: 88, right: 88),
      ),
    );
  }
}

class IconWrapper extends StatelessWidget {
  final double size;
  final IconButton btn;

  const IconWrapper({this.btn, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: btn,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(12, 22, 18, 61),
            blurRadius: 30.0,
            spreadRadius: 1,
            offset: Offset(0, 15),
          )
        ],
      ),
    );
  }
}
