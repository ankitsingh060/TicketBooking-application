import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utill/app_layout.dart';
import '../utill/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstName;
  final String secondName;
  final bool? isColor;
  const AppColumnLayout({Key? key,
    required this.firstName,
    required this.secondName,
    required this.alignment, this.isColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstName,
      style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondName,
    style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
      ],
    );
  }
}
