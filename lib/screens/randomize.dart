import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';

class Randomize extends StatefulWidget {
  @override
  _RandomizeState createState() => _RandomizeState();
}

class _RandomizeState extends State<Randomize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, 'show_food');
                          },
                          child: Image(
                            width: 130,
                            image: AssetImage('assets/cookbook_image.png'),
                          ),
                        ),
                        Text(
                          'click the cookbook to begin!',
                          style: TextStyle(
                            fontSize: 20,
                            color: kPurple,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(40),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [kPurple, kLightPink],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  color: kLightPink,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Text(
                  'Randomize my food',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
