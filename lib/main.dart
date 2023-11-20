import 'package:flutter/material.dart';
import 'package:hw3/providers/data_provider.dart';
import 'package:provider/provider.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'screens/screen3.dart';
import 'screens/screen4.dart';
import 'screens/screen5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        title: 'HW3',
        initialRoute: '/screen1',
        routes: {
          '/screen1': (context) => Screen1(),
          '/screen2': (context) => Screen2(),
          '/screen3': (context) => Screen3(),
          '/screen4': (context) => Screen4(),
          '/screen5': (context) => Screen5(),
        },
      ),
    );
  }
}
