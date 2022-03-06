import 'package:beautified_widgets/beautified_color_themes.dart';
import 'package:flutter/material.dart';

// Defining different types of button
enum Buttons{
  primary,
  primaryDark,
  primaryLight,
  secondary,
  danger,
  success,
  dark,
  light,
  googleCircle,
  facebookCircle,
  twitterCircle,
  googleRectangle,
  facebookRectangle,
  twitterRectangle,
}

// Styling Button
class BeautifiedButton extends StatelessWidget{
  const BeautifiedButton({Key? key,required this.buttonType, required this.buttonText ,required this.onClick}) : super(key: key);
  final Buttons buttonType;
  final String buttonText;
  final Function? onClick;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Selecting Button Type
    switch(buttonType){
      case Buttons.primary:
        return getTextButton(baseColorTheme["primary"]!,baseColorTheme["light"]!,height,width);
      case Buttons.primaryDark:
        return getTextButton(baseColorTheme["primaryDark"]!,baseColorTheme["light"]!,height,width);
      case Buttons.primaryLight:
        return getTextButton(baseColorTheme["primaryLight"]!,baseColorTheme["dark"]!,height,width);
      case Buttons.secondary:
        return getTextButton(baseColorTheme["secondary"]!,baseColorTheme["dark"]!,height,width);
      case Buttons.success:
        return getTextButton(baseColorTheme["success"]!,baseColorTheme["light"]!,height,width);
      case Buttons.danger:
        return getTextButton(baseColorTheme["danger"]!,baseColorTheme["light"]!,height,width);
      case Buttons.dark:
        return getTextButton(baseColorTheme["dark"]!,baseColorTheme["light"]!,height,width);
      default:
        return getTextButton(baseColorTheme["light"]!,baseColorTheme["dark"]!,height,width);
    }
  }

  // Returning Text Button
  TextButton getTextButton(Color bgColor,Color frColor,double height,double width){

    return TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: (height*1.5)/100,horizontal: (width*2.0)/100),
          backgroundColor: bgColor,
        ),

        onPressed: (){onClick!();},
        child: Text(buttonText, style: TextStyle(fontSize: ((height*2.5)/100), color: frColor),)
    );
  }

}