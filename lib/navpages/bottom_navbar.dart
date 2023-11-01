import 'package:flutter/material.dart';
import 'package:rentara/screens/home%20pages/home_page.dart';
import 'package:rentara/screens/profile_page.dart';
import 'package:rentara/screens/rent%20pages/rent_page.dart';
import 'package:rentara/screens/wishlist_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _index = 0;
  final pages = [
    MyHomePage(),
    RentPage(),
    WishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        selectedItemColor: Color(0xFF7D613B),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontFamily: "Poppins",
        ),
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(
          fontFamily: "Poppins",
        ),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(label: "Rent",icon: Icon(Icons.edit_calendar_outlined)),
          BottomNavigationBarItem(label: "Wishlist",icon: Icon(Icons.favorite_border_outlined)),
          BottomNavigationBarItem(label: "Profile",icon: Icon(Icons.person_pin_outlined)),
        ],
      ),
    );
  }
}
