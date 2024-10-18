import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_june/controllers/counter_screen_controller.dart';
import 'package:provider_sample_june/controllers/second_screen_controller.dart';

import 'package:provider_sample_june/views/second_screen/second_screen.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild scaffold");
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangeNotifierProvider(
                        create: (context) => SecondScreenController(),
                        child: SecondScreen(),
                      ),
                    ));
              },
              icon: Icon(Icons.arrow_right))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().onIncrement();
        },
      ),
      body: Center(
        child: Consumer<CounterScreenController>(
          builder: (context, counterProvider, child) => Column(
            children: [
              Text(
                counterProvider.count.toString(),
                style: TextStyle(color: Colors.red, fontSize: 100),
              ),
              Text(
                counterProvider.name.toString(),
                style: TextStyle(color: Colors.red, fontSize: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
