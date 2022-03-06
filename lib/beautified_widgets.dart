library beautified_widgets;

import 'package:flutter/cupertino.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class PaddedContainer extends StatelessWidget{
  const PaddedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Hello');
  }

}

