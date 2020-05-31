import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ShowFood extends StatefulWidget {
  @override
  _ShowFoodState createState() => _ShowFoodState();
}

class _ShowFoodState extends State<ShowFood> {

  //Returns a map data type
  Future<Map> getData() async {
    http.Response response = await http.get('https://getfood-rest-api.herokuapp.com/api/random_food');
    Map decodedData = json.decode(response.body);
    return decodedData;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('hi');
  }

  List<Widget> items = [
    Container(child: Text('Hi'),),
    Container(child: Text('Hi'),),
    Container(child: Text('Hi'),),
    Container(child: Text('Hi'),),
    Container(child: Text('Hi'),),
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

