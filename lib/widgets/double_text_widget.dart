import 'package:flutter/material.dart';
import '../utill/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLineStyle2,),
        InkWell(
          onTap: (){
            print("You are Tapped");
          },
          child: Text(smallText, style: Styles.headLineStyle3,),
        )
      ],
    );
  }
}
