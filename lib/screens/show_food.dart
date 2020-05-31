import 'package:flutter/material.dart';
import 'package:learningfoodrandomizer/functions/http_functions.dart';

class ShowFood extends StatefulWidget {
  @override
  _ShowFoodState createState() => _ShowFoodState();
}

class _ShowFoodState extends State<ShowFood> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('hi');
  }

  List<Widget> items = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            MaterialButton(
              color: Colors.green,
                onPressed: () async{
                getImage();
                var data = await getData();
                var food = data['food_name'];
              setState(() {
                items.add(Container(child: Text(food),),);
              });
            }),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index){
                    return items[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

