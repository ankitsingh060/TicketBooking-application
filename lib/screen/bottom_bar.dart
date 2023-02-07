import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screen/home_screen.dart';
import 'package:ticket_booking_app/screen/profile_screen.dart';
import 'package:ticket_booking_app/screen/search_screen.dart';
import 'package:ticket_booking_app/screen/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

   int _selectedIndex = 0;
   static final List<Widget> _widgetOption = <Widget>[
     const HomeScreen(),
     const SearchScreen(),
     const TicketScreen(),
     const ProfileScreen()
   ];

   void _onItemTapped(int index)
   {

     setState(() {
       _selectedIndex = index;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(
        child: _widgetOption[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.green,
        elevation: 10,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526488),
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), 
              activeIcon: Icon(Icons.airplane_ticket),
              label: "airplane ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), 
              activeIcon: Icon(Icons.person),
              label: "Person"),

        ],
      ),
    );
  }
}
