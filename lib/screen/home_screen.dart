import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screen/hotel_screen.dart';
import 'package:ticket_booking_app/screen/ticket_view.dart';
import 'package:ticket_booking_app/utill/app_info_list.dart';
import 'package:ticket_booking_app/utill/app_layout.dart';
import 'package:ticket_booking_app/utill/app_style.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/widgets/double_text_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headLineStyle3),
                        // SizedBox(height: 5,),
                        const Gap(5),
                        Text("Book Ticket", style: Styles.headLineStyle1,)
                      ],
                    ),
                    Container(
                      width: AppLayout.getWidth(50),
                      height: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/Image/img_1.png')
                          )

                      ),
                    )
                  ],
                ),
                const Gap(20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.search_outlined, color: Colors.orange,
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle1,),
                    InkWell(
                        onTap: () {
                          print("Tapped");
                        },
                        child: Text("View all", style: Styles.headLineStyle3,))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
                children: ticketList.map((singleTicket) =>
                    TicketView(showTicket: singleTicket)).toList(),
            ),
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          const Gap(15),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   padding: const EdgeInsets.only(left: 16),
          //   child: Row(
          //     children: [
          //       HomeScreen(),
          //       HomeScreen(),
          //       HomeScreen()
          //     ],
          //   ),
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((singleHotel) =>
                  HotelScreen(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
