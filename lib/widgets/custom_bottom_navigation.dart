import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(     // Widget coming from material
      showSelectedLabels: false,
      // showUnselectedLabels: false, // By default it's true
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,    // Index of the items
      items: [    // >=2 required
        BottomNavigationBarItem(
          icon: Icon( Icons.calendar_today_outlined ),    // Required attribute in BottomNavigationBarItem
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.pie_chart_outline_outlined ),
          label: 'Gráfica'
        ),
        BottomNavigationBarItem(
          icon: Icon( Icons.supervised_user_circle_outlined ),
          label: 'Usuarios'
        ),
      ],
    );
  }
}