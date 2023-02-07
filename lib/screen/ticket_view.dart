import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/AppLayoutBuilderWidget.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import '../utill/app_layout.dart';
import '../utill/app_style.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>showTicket;
  final bool? isColor;
  const TicketView({Key? key, required this.showTicket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(172),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            Showing blue Part of the card/ticket
             */
            Container(
              decoration:  BoxDecoration(
                color: isColor==null?Color(0xFF526799):Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                   Row(
                    children: [
                      Text(showTicket['from']["code"] ,
                        style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      // const Spacer(),

                      Expanded(child: Container()),
                      ThickContainer(isColor: true),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilderWidget(section: 6,isColor: isColor,),
                            // child: LayoutBuilder(
                            //
                            //   builder: (BuildContext context , BoxConstraints constraints ) {
                            //     // print("The width is ${constraints.constrainWidth()}");
                            //     return Flex(
                            //         direction: Axis.horizontal,
                            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //         children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                            //           width: 3,
                            //           height: 1,
                            //           child: DecoratedBox(
                            //               decoration: BoxDecoration(
                            //                   color: isColor==null?Colors.white:Color(0xFF8BACCF)
                            //               )
                            //           ),
                            //         ))
                            //     );
                            //   },
                            //
                            // ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor==null?Colors.white:Color(0xFF8ACCF7),),)),

                        ] ,
                      )),
                      ThickContainer(isColor: true,),
                      Expanded(child: Container()),

                      Text(showTicket['to']["code"] ,
                        style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,)
                    ],
                  ),
                   const Gap(3),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(
                         child: Text(showTicket['from']["name"]  ,
                           style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                       ),
                       Text(showTicket['to']["time"]  ,
                         style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                       SizedBox(
                         child: Text(showTicket['to']["name"]  ,textAlign: TextAlign.end,
                           style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                       ),
                     ],
                   )
                ],
              ),
            ),
            /*
            Showing orage part of the card/ticket
             */
            Container(
              color: isColor==null?Styles.orangeColor:Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(10)),
                          bottomRight: Radius.circular(AppLayout.getHeight(10))
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: List.generate((constraints.constrainWidth()/20).floor(), (index) => SizedBox(
                            width: 5,height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor==null?Colors.white:Color(0xFF8ACCF7)
                              ),
                            ),
                          )),
                        );
                      },

                    ),
                  )
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
                ],
              )
            ),
            /*
            bottom part of the orange card/ticket
             */
            Container(
              decoration: BoxDecoration(
                color: isColor==null?Styles.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor==null?21:0),
                  bottomRight: Radius.circular(isColor==null?21:0)
                )
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstName: showTicket['date'], secondName: "Date", alignment: CrossAxisAlignment.start,isColor: isColor,),
                      AppColumnLayout(firstName: showTicket['departure_time'], secondName: "Departure Time", alignment: CrossAxisAlignment.center,isColor: isColor),
                      AppColumnLayout(firstName: showTicket['number'].toString(), secondName: "Number", alignment: CrossAxisAlignment.end, isColor: isColor),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(showTicket['date'],
                      //       style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      //     Text("DATE",
                      //       style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      //   ],
                      // ),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(showTicket['departure_time'],
                      //       style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,),
                      //     Text("Departure Time",
                      //       style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(showTicket['number'].toString(),
                      //       style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                      //     Text("Number",
                      //       style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                      //   ],
                      // ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
