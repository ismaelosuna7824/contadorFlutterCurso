import 'package:flutter/material.dart';

import '../widgets/floating_action_button.dart';

class HomePageCounter extends StatefulWidget {
  const HomePageCounter({super.key});

  @override
  State<HomePageCounter> createState() => _HomePageCounterState();
}

class _HomePageCounterState extends State<HomePageCounter> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Numero de clicks', style: TextStyle(fontSize: 30)),
              Text('$counter', style: const TextStyle(fontSize: 30))
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: CustomActionButtom(
          increaseFN: increase,
          resetFN: reset,
          decreaseFN: decrease,
        ));
  }
}
