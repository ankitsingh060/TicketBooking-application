import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screen/ticket_view.dart';
import 'package:ticket_booking_app/utill/app_info_list.dart';
import 'package:ticket_booking_app/utill/app_layout.dart';
import 'package:ticket_booking_app/widgets/AppLayoutBuilderWidget.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/ticket_tab_widget.dart';
import 'package:barcode/barcode.dart';

import '../utill/app_style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              TicketTabWidget(firstTicket: "Upcoming",secondTicket: "Previous",),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(showTicket: ticketList[0],isColor: true,),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                            firstName: "Flutter DB",
                            secondName: "Passenger",
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                        ),
                        AppColumnLayout(
                            firstName: "5221 478566",
                            secondName: "Passport",
                            alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    AppLayoutBuilderWidget(isColor: false, section: 15,width: 5.0,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstName: "0055 444 77147",
                          secondName: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstName: "B2SG28",
                          secondName: "Booking code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    AppLayoutBuilderWidget(isColor: false, section: 15,width: 5.0,),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/Image/visa.png" , scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3,)
                              ],
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text("Payment method", style: Styles.headLineStyle4,)
                          ],
                        ),
                        AppColumnLayout(
                          firstName: "\$249.99",
                          secondName: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 1,),

                  ],
                ),
              ),
              /*
              Bar code code
               */
              SizedBox(height: 1,),
               Container(
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     bottomRight: Radius.circular(21),
                     bottomLeft: Radius.circular(21)
                   )
                 ),
                 margin: EdgeInsets.only(left: 15,right: 15),
                 padding: EdgeInsets.only(
                   top: 15,bottom: 15
                 ),
                 child: Container(
                   padding: EdgeInsets.only(top: 15, bottom: 15),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                     child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data:"https://github.com/ankitsingh060/TicketBooking-application.git",
                      drawText: false,
                       color: Styles.textColor,
                       width: double.infinity,
                       height: 70,
                      ),
                   ),
                 ),
               ),
              Gap(AppLayout.getHeight(10)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(showTicket: ticketList[0],),
              ),
            ],
          )
        ],
      )
    );
  }
}
