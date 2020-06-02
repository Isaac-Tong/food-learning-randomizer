import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/constants.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {

  int index = 0;

  List<Widget> newPage = [
    Column(
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
                fit: BoxFit.fitHeight,
                child: Image(
                  image: AssetImage('assets/one-pot-paneer-curry-pie.jpg'),
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
                        'asd',
                        style: TextStyle(
                            color: kPurple,
                            fontWeight: FontWeight.w900,
                            fontSize: 42),
                      ),
                    ),
                    Text(
                      'asd',
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
      ],
    ),
    Column(
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
                fit: BoxFit.fitHeight,
                child: Image(
                  image: AssetImage('assets/one-pot-paneer-curry-pie.jpg'),
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
                        'asd',
                        style: TextStyle(
                            color: kPurple,
                            fontWeight: FontWeight.w900,
                            fontSize: 42),
                      ),
                    ),
                    Text(
                      'asd',
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
      ],
    ),
    Column(
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
                fit: BoxFit.fitHeight,
                child: Image(
                  image: AssetImage('assets/one-pot-paneer-curry-pie.jpg'),
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
                        'asd',
                        style: TextStyle(
                            color: kPurple,
                            fontWeight: FontWeight.w900,
                            fontSize: 42),
                      ),
                    ),
                    Text(
                      'asd',
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
      ],
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newPage.add(Column(
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
                fit: BoxFit.fitHeight,
                child: Image(
                  image: AssetImage('assets/one-pot-paneer-curry-pie.jpg'),
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
                        'asd',
                        style: TextStyle(
                            color: kPurple,
                            fontWeight: FontWeight.w900,
                            fontSize: 42),
                      ),
                    ),
                    Text(
                      'asd',
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
      ],
    ),);

  }

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          newPage.add(Column(
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
                      fit: BoxFit.fitHeight,
                      child: Image(
                        image: AssetImage('assets/cookbook_image.png'),
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
                              'asd',
                              style: TextStyle(
                                  color: kPurple,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42),
                            ),
                          ),
                          Text(
                            'asd',
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
            ],
          ),);
        },
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: PageView(
                onPageChanged: (idx){
                  index = idx;
                },
                controller: pageController,
                children: newPage,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        newPage.add(Column(
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
                                    fit: BoxFit.fitHeight,
                                    child: Image(
                                      image: AssetImage('assets/one-pot-paneer-curry-pie.jpg'),
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
                                            'asd',
                                            style: TextStyle(
                                                color: kPurple,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 42),
                                          ),
                                        ),
                                        Text(
                                          'asd',
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
                          ],
                        ),);
                        pageController.animateToPage(index++, duration: Duration(milliseconds: 300), curve: Curves.easeInCubic);
                      });
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
    );
  }
}
