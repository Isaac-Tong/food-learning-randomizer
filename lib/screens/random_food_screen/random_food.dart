import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';
import 'package:learningfoodrandomizer/functions/http_functions.dart';

class RandomFood extends StatefulWidget {
  @override
  _RandomFoodState createState() => _RandomFoodState();
}

class _RandomFoodState extends State<RandomFood> {
  String mainText = 'Loading';
  String cuisineText = 'Loading';
  String foodURL = 'https://www.heart.org/-/media/images/health-topics/congenital-heart-defects/50_1683_44a_asd.jpg?h=551&w=572&la=en&hash=60A4E57B316F13921A743143171BD2EFC7912F93';

  void setData() async {
    Map apiData = await getData();
    //Decode the food_name from the map

    setState((){
      mainText = apiData['food_name'];
      cuisineText = apiData['type'];

    });

    String returnedURL = await getImage(mainText);

    setState(() {
      foodURL = returnedURL;
    });

  }

  @override
  void initState() {
    super.initState();
    setData();
  }

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
                      image: NetworkImage(foodURL),
                    ),
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
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            mainText,
                            style: TextStyle(
                                color: kPurple,
                                fontWeight: FontWeight.w900,
                                fontSize: 42),
                          ),
                        ),
                        Text(
                          cuisineText,
                          style: TextStyle(
                            color: kLightPink,
                            fontWeight: FontWeight.normal,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image(
                        image: AssetImage('assets/cookbook_image.png'),
                        width: 20),
                  ),
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
                        child: Image(
                          image: AssetImage('assets/thumbs-down.png'),
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
                        child: Image(
                          image: AssetImage('assets/thumbs-up.png'),
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
