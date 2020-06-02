import 'package:flutter/material.dart';

class image_widget extends StatelessWidget {
  const image_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(7, 7),
                  blurRadius: 30),
            ]),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Image(
                image:
                AssetImage('assets/one-pot-paneer-curry-pie.jpg')),
          ),
        ),
      ),
    );
  }
}