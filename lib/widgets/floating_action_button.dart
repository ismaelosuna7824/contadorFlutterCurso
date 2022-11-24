import 'package:flutter/material.dart';

class CustomActionButtom extends StatelessWidget {
  final Function increaseFN;
  final Function decreaseFN;
  final Function resetFN;
  const CustomActionButtom(
      {super.key,
      required this.increaseFN,
      required this.decreaseFN,
      required this.resetFN});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => increaseFN()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_outlined),
            onPressed: () => resetFN()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => decreaseFN())
      ],
    );
  }
}
