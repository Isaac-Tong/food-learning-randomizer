import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';
import 'package:learningfoodrandomizer/functions/http_functions.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {

  int index = 1;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (idx){
                  index = idx;
                },
                physics: NeverScrollableScrollPhysics(),
                pageSnapping: true,
                controller: pageController,
                itemBuilder: (context, position){
                  return SinglePageWidget();
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        pageController.animateToPage(index++, duration: Duration(milliseconds: 300), curve: Curves.ease);
                      },
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
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        index++;
                        pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
                      },
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

class SinglePageWidget extends StatefulWidget {
  const SinglePageWidget({
    Key key,
  }) : super(key: key);

  @override
  _SinglePageWidgetState createState() => _SinglePageWidgetState();
}

class _SinglePageWidgetState extends State<SinglePageWidget> {

  //Text And Image Variables
  String mainText = 'Loading';
  String cuisineText = 'Loading';
  String foodURL = 'https://cdn.dribbble.com/users/3337757/screenshots/6825268/076_-loading_animated_dribbble_copy.gif';

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
    return Column(
      children: <Widget>[
        Expanded(
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
                fit: BoxFit.cover,
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 3,
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
                      'Cuisine: ' + cuisineText,
                      style: TextStyle(
                        color: kLightPink,
                        fontWeight: FontWeight.normal,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Image(
                    image: AssetImage('assets/cookbook_image.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
