
import 'package:beautified_widgets/beautified_widgets.dart';
import 'package:flutter/material.dart';

class BeautifiedAlertDialog extends StatelessWidget{
  const BeautifiedAlertDialog({Key? key, required this.title, required this.description, required this.positiveText, required this.negativeText, required this.onPositiveAction, required this.onNegativeAction}) : super(key: key);
  final String title;
  final String description;
  final String positiveText;
  final String negativeText;

  // Function to be called on Positive Response
  final Function onPositiveAction;
  // Function to be called on Negative Response
  final Function onNegativeAction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(description),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(positiveText),
          onPressed: () {
            onPositiveAction();
          },
        ),
        TextButton(
          child: Text(negativeText),
          onPressed: () {
            onNegativeAction();
          },
        ),
      ],
    );
  }
}

Future<dynamic> showBeautifiedAlertDialog(BuildContext context, String title, String description, String positiveText, String negativeText, Function positiveFunction, Function negativeFunction){

  return showDialog(context: context, barrierDismissible: false, builder: (BuildContext ctx){
    return BeautifiedAlertDialog(title: title, description: description, positiveText: positiveText, negativeText: negativeText, onPositiveAction: positiveFunction, onNegativeAction: negativeFunction,);
  });
}

void BeautifiedAlertDialogClose(BuildContext context){
  Navigator.of(context).pop();
}