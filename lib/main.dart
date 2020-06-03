import 'package:flutter/material.dart';
import 'screens/randomize.dart';
import 'screens/show_food.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/random_food_screen/random_food.dart';
import 'package:learningfoodrandomizer/screens/random_food_screen/test_pageview.dart';
import 'screens/random_food_screen/random_food.dart';
import 'screens/random_food_screen/test_pageview.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Randomize(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFAFAFA)
      ),



      routes: {
        'show_food': (context) => DisplayPage(),
      },
    );
  }
}

//home: Randomize(),