import 'package:flutter/cupertino.dart';

enum BeautifiedTextStyles{
  heading,
  paragraph,
  bold,
  italic,
}

class BeautifiedText extends StatelessWidget{

  final BeautifiedTextStyles textStyles;
  final String text;
  final Color? textColor;

  const BeautifiedText({Key? key, required this.textStyles, required this.text, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    switch(textStyles){
      case BeautifiedTextStyles.heading:
        return Text(text,style: TextStyle(fontSize: ((height*4)/100),fontWeight: FontWeight.w500,color: textColor),);
      case BeautifiedTextStyles.bold:
        return Text(text,style: TextStyle(fontSize: ((height*2.5)/100),fontWeight: FontWeight.bold,color: textColor),);
      case BeautifiedTextStyles.italic:
        return Text(text,style: TextStyle(fontSize: ((height*2.5)/100),fontStyle: FontStyle.italic,color: textColor),);
      default:
        return Text(text,style: TextStyle(fontSize: ((height*2.5)/100),color: textColor),);
    }
  }

}