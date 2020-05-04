import 'package:flutter/material.dart';
import 'ButtonSet.dart';
import 'MemePicture.dart';
import 'PageTitle.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox.expand(
        child: Column(
          children: <Widget>[PageTitle(), MemePicture(), ButtonSet()],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }
}
