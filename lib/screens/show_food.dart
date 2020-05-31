import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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

  Future getImage() async{
    http.Response imageResponse = await http.get('https://eastasia.api.cognitive.microsoft.com/bing/v7.0/images/search?q="Burger"&count=1', headers: {'Ocp-Apim-Subscription-Key': DotEnv().env['BING_IMAGES_AUTH']});
    Map decodedResponse = json.decode(imageResponse.body);
    //Convert map to a list


    print(decodedResponse['value'][0]['contentUrl']);
  }

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

