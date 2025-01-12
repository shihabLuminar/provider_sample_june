import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample_june/controllers/counter_screen_controller.dart';
import 'package:provider_sample_june/controllers/second_screen_controller.dart';

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
      backgroundColor: context.watch<SecondScreenController>().currentColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterScreenController>().onIncrement();
        },
      ),
      body: Center(
        child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 30),
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context
                        .read<SecondScreenController>()
                        .updateColor(SecondScreenController.colors[index]);
                  },
                  child: Container(
                    color: SecondScreenController.colors[index],
                    height: 80,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
            itemCount: 5),
      ),
    );
  }
}
