import 'package:beautified_widgets/beautified_color_themes.dart';
import 'package:flutter/material.dart';

// Defining different types of button
enum BeautifiedButtonStyles{
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
  githubCircle,
  microsoftCircle,
  emailCircle,
  customButton,
  customCircularIconButton
}

// Styling Button
class BeautifiedButton extends StatelessWidget{
  const BeautifiedButton({Key? key,required this.buttonType, this.buttonText ,required this.onPressed, this.backgroundColor, this.foregroundColor, this.icon}) : super(key: key);
  final BeautifiedButtonStyles buttonType;
  final String? buttonText;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final IconData? icon;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Selecting Button Type
    switch(buttonType){
      case BeautifiedButtonStyles.primary:
        return getTextButton(BaseColorThemes.primary,BaseColorThemes.light,height,width);
      case BeautifiedButtonStyles.primaryDark:
        return getTextButton(BaseColorThemes.primaryDark,BaseColorThemes.light,height,width);
      case BeautifiedButtonStyles.primaryLight:
        return getTextButton(BaseColorThemes.primaryLight,BaseColorThemes.dark,height,width);
      case BeautifiedButtonStyles.secondary:
        return getTextButton(BaseColorThemes.secondary,BaseColorThemes.dark,height,width);
      case BeautifiedButtonStyles.success:
        return getTextButton(BaseColorThemes.success,BaseColorThemes.light,height,width);
      case BeautifiedButtonStyles.danger:
        return getTextButton(BaseColorThemes.danger,BaseColorThemes.light,height,width);
      case BeautifiedButtonStyles.dark:
        return getTextButton(BaseColorThemes.dark,BaseColorThemes.light,height,width);

      case BeautifiedButtonStyles.customButton:
        return getTextButton(backgroundColor!, foregroundColor!, height, width);
      case BeautifiedButtonStyles.customCircularIconButton:

        return Container(child: GestureDetector(onTap: (){onPressed!();},child: Icon(icon),),margin: EdgeInsets.all((width*1.5)/100), height: (width*20)/100, width: (width*20)/100,);

      case BeautifiedButtonStyles.googleCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/google.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent,), width);
      case BeautifiedButtonStyles.facebookCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/facebook.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent), width);
      case BeautifiedButtonStyles.twitterCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/twitter.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent), width);
      case BeautifiedButtonStyles.microsoftCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/microsoft.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent,), width);
      case BeautifiedButtonStyles.githubCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/github.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent), width);
      case BeautifiedButtonStyles.emailCircle:
        return getRoundSocialMediaButton(CircleAvatar(backgroundImage: const AssetImage("assets/icons/email.png",package: "beautified_widgets"),backgroundColor: BaseColorThemes.transparent), width);
      default:
        return getTextButton(BaseColorThemes.light,BaseColorThemes.dark,height,width);
    }
  }

  // Returning Text Button
  TextButton getTextButton(Color bgColor,Color frColor,double height,double width){

    return TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: (height*1.5)/100,horizontal: (width*2.0)/100),
          backgroundColor: bgColor,
        ),

        onPressed: (){onPressed!();},
        child: Text(buttonText!, style: TextStyle(fontSize: ((height*2.5)/100), color: frColor),)
    );
  }

  // Returning Buttons for Circular Social Media Buttons
  Widget getRoundSocialMediaButton(CircleAvatar image,double width){
    return Container(child: GestureDetector(onTap: (){onPressed!();},child: image,),margin: EdgeInsets.all((width*1.5)/100), height: (width*20)/100, width: (width*20)/100,);
  }
}
