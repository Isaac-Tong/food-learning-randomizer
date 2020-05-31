import 'package:flutter/material.dart';
import 'screens/randomize.dart';
import 'screens/show_food.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load('.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Randomize(),
      routes: {
        'show_food': (context) => ShowFood(),
      },
    );
  }
}
