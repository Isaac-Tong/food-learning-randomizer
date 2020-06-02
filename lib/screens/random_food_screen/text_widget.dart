import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';

class text_widget extends StatelessWidget {
  const text_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 25, 25),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Lorem Ipsum',
                style: TextStyle(
                    color: kPurple,
                    fontWeight: FontWeight.w900,
                    fontSize: 42),
              ),
              Text(
                'Cuisine: Ipsum',
                style: TextStyle(
                  color: kLightPink,
                  fontWeight: FontWeight.normal,
                  fontSize: 30,
                ),
              ),
            ],
          ),
          Image(
              image: AssetImage('assets/cookbook_image.png'),
              width: 90),
        ],
      ),
    );
  }
}


