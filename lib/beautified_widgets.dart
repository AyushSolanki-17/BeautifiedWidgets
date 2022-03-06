library beautified_widgets;

import 'package:flutter/cupertino.dart';

class BeautifiedContainer extends StatelessWidget{
  const BeautifiedContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all((width*2.5)/100),
      margin: EdgeInsets.all((width*2.5)/100),
      child: child,
    );
  }

}
class PaddedContainer extends StatelessWidget{
  const PaddedContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all((width*2.5)/100),
      child: child,
    );
  }

}

