
import 'package:flutter/material.dart';

import '../utill/app_layout.dart';

class TicketTabWidget extends StatelessWidget {
  final String firstTicket;
  final String secondTicket;
  const TicketTabWidget({Key? key,required this.firstTicket , required this.secondTicket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
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
              child : Center(child: Text(firstTicket)),
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
              child : Center(child: Text(secondTicket)),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD),
        ),
      ),
    );
  }
}
