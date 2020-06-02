import 'package:flutter/material.dart';

class like_dislike_widget extends StatelessWidget {
  const like_dislike_widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
