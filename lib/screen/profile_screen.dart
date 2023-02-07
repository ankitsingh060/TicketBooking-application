import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utill/app_layout.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';

import '../utill/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Image/img_1.png"
                        )
                    )
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  Gap(AppLayout.getHeight(2)),
                  Text("New-York", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(4),vertical: AppLayout.getWidth(4)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Color(0xFFFEF4F3),
                            color: Colors.black
                          ),

                          child: const Icon(CupertinoIcons.shield_fill,
                             color: Colors.white,size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text("Premium status",style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                  ),

                ],
              ),
              const Spacer(),
              Column(

                children: [
                  InkWell(
                    onTap: (){
                      print("you are tapped");
                    },
                    child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w600),),
                  ),
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
               Container(
                 height: AppLayout.getHeight(90),
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Styles.primaryColor,
                   borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                 ),
               ),
               Positioned(
                 right: -45,
                 top: -40,
                 child: Container(
                   padding: EdgeInsets.all(AppLayout.getHeight(30)),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(width: 18,color: Color(0xFF264CD2))
                   ),

                 ),
               ),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       child: Icon(Icons.lightbulb_outline_sharp,
                       color: Colors.white,size: 27,),
                     ),
                     Gap(AppLayout.getHeight(12)),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("You\'v got a new award",
                           style: Styles.headLineStyle2.copyWith(
                             fontWeight: FontWeight.bold,
                               color: Colors.white),),
                         Text("You have 95 flight in a year",
                           style: Styles.headLineStyle3.copyWith(
                             fontWeight: FontWeight.w500,
                               color: Colors.white.withOpacity(0.9)),),
                       ],
                     )
                   ],
                 ),
               ),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Container(
            child: Column(
              children: [
                Gap(AppLayout.getHeight(20)),
                Text("192802", style:TextStyle(
                  fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w500
                ),),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accured", style: Styles.headLineStyle3.copyWith(color: Colors.grey.withOpacity(0.9)),),
                    Text("23 May 2021", style: Styles.headLineStyle3.copyWith(color: Colors.grey.withOpacity(0.9),))
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstName: "23 042", secondName: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstName: "Airline CO", secondName: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstName: "24", secondName: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstName: "McDonal's", secondName: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstName: "52 340", secondName: "Miles", alignment: CrossAxisAlignment.start, isColor: false,),
                    AppColumnLayout(firstName: "Exuma", secondName: "Received from", alignment: CrossAxisAlignment.end, isColor: false,)
                  ],
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: (){
              print("You are tapped");
            },
            child: Center(
                child: Text("How to get more miles", style: Styles.headLineStyle3.copyWith(color: Colors.grey.withOpacity(0.9)),)
            ),
          )
        ],
      ),
    );
  }
}
