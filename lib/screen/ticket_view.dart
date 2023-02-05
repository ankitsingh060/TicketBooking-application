import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utill/app_layout.dart';
import '../utill/app_style.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>showTicket;
  const TicketView({Key? key, required this.showTicket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
            Showing blue Part of the card/ticket
             */
            Container(
              decoration:  BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                   Row(
                    children: [
                      Text(showTicket['from']["code"] , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      // const Spacer(),

                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(

                              builder: (BuildContext context , BoxConstraints constraints ) {
                                // print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white
                                          )
                                      ),
                                    ))
                                );
                              },

                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),

                        ] ,
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),

                      Text(showTicket['to']["code"] , style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                   const Gap(3),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(
                         child: Text(showTicket['from']["name"]  , style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                       ),
                       Text(showTicket['to']["time"]  , style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                       SizedBox(
                         child: Text(showTicket['to']["name"]  ,textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
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
              color: Styles.orangeColor,
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
                                  color: Colors.white
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
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21)
                )
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(showTicket['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("DATE", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(showTicket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Departure Time", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(showTicket['number'].toString(), style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
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
