import 'package:flutter/material.dart';
import 'package:flutterapp/utils/hexToColor.dart';

//https://loremflickr.com/json/480/640/girl
//http://farium.ru/random/generate?time=1588508753387&arg1=0&arg2=18&type=name
const url =
    'https://productled.university/wp-content/uploads/2020/03/Corona.png';

class MemePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        child: Image.network(
          url,
          loadingBuilder: (ctx, child, progress) => progress == null
              ? Stack(
                  alignment: Alignment.center,
                  fit: StackFit.expand,
                  children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: child,
                      ),
                      Positioned(
                        bottom: 32,
                        right: 0,
                        left: 24,
                        child: Container(
                          child: Text("hello"),
                          padding: EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                            color: Color.fromARGB(220, 255, 255, 255)
                          ),
                        ),
                      ),
                    ])
              : Loader(),
          fit: BoxFit.cover,
        ),
        margin: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: hexToColor('#4E4B6F'),
        ),
      ),
    );
  }
}

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      );
}
