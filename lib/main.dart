import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_june/controllers/counter_screen_controller.dart';
import 'package:provider_sample_june/views/counter_screen/counter_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterScreenController(),
      child: MaterialApp(
        home: CounterScreen(),
      ),
    );
  }
}
