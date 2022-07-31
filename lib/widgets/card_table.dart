import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(     // Table which it's specified by row
      children: [
        TableRow(
          children: [
            _SigleCard( color: Colors.blue, icon: Icons.border_all, text: 'General' ),
            _SigleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport' ),
          ]
        ),

        TableRow(
          children: [
            _SigleCard( color: Colors.purple, icon: Icons.shop, text: 'Shopping' ),
            _SigleCard( color: Colors.purpleAccent, icon: Icons.cloud, text: 'Bill' ),
          ]
        ),

        TableRow(
          children: [
            _SigleCard( color: Colors.deepPurple, icon: Icons.movie, text: 'Entertainment' ),
            _SigleCard( color: Colors.pinkAccent, icon: Icons.food_bank_outlined, text: 'Grocery' ),
          ]
        ),

        TableRow(
          children: [
            _SigleCard( color: Colors.blue, icon: Icons.border_all, text: 'General' ),
            _SigleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport' ),
          ]
        ),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SigleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return _CardBackground( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,      // mainAxisAlignment in a column is in vertical
          children: [
            CircleAvatar(     // Flutter statelessWidget
              backgroundColor: this.color,
              child: Icon( this.icon, size: 35, color: Colors.white, ),
              radius: 30,
            ),
            SizedBox( height: 10 ),
            Text( this.text , style: TextStyle( color: this.color, fontSize: 18 ),)
          ],
        )
      );
  }
}

// Extract in this widget to handle all the style
class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key,           // Allows keeping the reference to the widgetd
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(     // Wrap under Container to add the margin
          margin: EdgeInsets.all(15),
          child: ClipRRect(     // Wrap under ClipRRect, in order to apply the blur just to the specific container and add the borderRadius
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(    // Wrap under BackdropFilter, to apply the blur filter
              filter: ImageFilter.blur( sigmaX: 5, sigmaY: 5 ),   // sigmaX and sigmaY, to handle how to expand the blur
              child: Container(     // Wrap under Container to add the 'decoration'
                height: 180,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: this.child,
          ),
        ),
      ),
    );
  }
}