import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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