import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';

class RandomFood extends StatefulWidget {
  @override
  _RandomFoodState createState() => _RandomFoodState();
}

class _RandomFoodState extends State<RandomFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
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
            ),
            Container(
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
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFfd5e53),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(35),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image(
                            image: AssetImage('assets/thumbs-down.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF21bf73),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(35),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image(
                            image: AssetImage('assets/thumbs-up.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
