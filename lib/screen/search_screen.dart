import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';

import 'package:ticket_booking_app/widgets/icon_text_widget.dart';

import '../utill/app_layout.dart';
import '../utill/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(80)),
          Text("What are \nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                  Airline ticket
                   */
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white
                    ),
                    child : Center(child: Text("Airline tickets")),
                  ),
                  /*
                  flight
                   */
                  Container(
                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent
                    ),
                    child : Center(child: Text("Train tickets")),
                  )
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
            ),
          ),
           Gap(AppLayout.getHeight(25)),
           AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(10)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(15)),
          Container(
              child: ElevatedButton(onPressed: (){}, child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Find Ticket", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
              ))
          ),
          Gap(AppLayout.getHeight(30)),
          Container(
            child: AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all"),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            child: Row(
              children: [
                Container(
                  height: AppLayout.getHeight(400),
                  width: size.width*.42,
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/Image/hotelimg1.jpeg"
                            )
                          )

                        ),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Text("20% Discount on the early booking of this flight. Don't miss out this chance",
                        style: Styles.headLineStyle2)
                    ],
                  ),
                ),
                Gap(AppLayout.getWidth(12)),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container (
                          width: size.width*0.44,
                          height: AppLayout.getHeight(174),
                          decoration: BoxDecoration(
                              color: Color(0xFF3ABBBB),
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                          ),
                          padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(color:Colors.white),),
                              Gap(AppLayout.getHeight(10)),
                              Text("Take the survey \nabout our \nservice and\nget a discount",
                                  style: Styles.headLineStyle3.copyWith(color: Colors.white70,fontSize: 18))
                            ],
                          ),
                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 18,color: Color(0xFF189999)),
                              color: Colors.transparent
                          ),
                        ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Container(
                      width: size.width*.44,
                      height: AppLayout.getHeight(210),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        color: const Color(0xFFEC6545)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Take love", style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                          Gap(AppLayout.getHeight(10)),
                          Text("😍😍😍😍😍",style: Styles.headLineStyle1.copyWith(fontSize: 30),)
                        ],
                      ),
                    )
                  ],
                )

              ],
            ),
          )

        ],
      ),
    );
  }
}
