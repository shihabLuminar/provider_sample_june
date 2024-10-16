import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_june/controllers/counter_screen_controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    print("rebuild scaffold");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().onIncrement();
        },
      ),
      body: Center(
        child: Text(
          "count",
          style: TextStyle(color: Colors.red, fontSize: 100),
        ),
      ),
    );
  }
}
