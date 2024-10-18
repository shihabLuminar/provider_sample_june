import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_june/controllers/another_screen_controller.dart';
import 'package:provider_sample_june/controllers/counter_screen_controller.dart';
import 'package:provider_sample_june/controllers/second_screen_controller.dart';
import 'package:provider_sample_june/views/counter_screen/counter_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterScreenController()),
        ChangeNotifierProvider(
          create: (context) => AnotherScreenController(),
        )
      ],
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
