import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(      // Wrap under SafeArea, to ignore the bottom area, and focus on the top
      bottom: false,
      child: Container(   // Wrap under Container, to add enough margin
        margin: EdgeInsets.symmetric( horizontal: 20 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   // crossAxisAlignment in a Column is in horizontal
          children: [
            Text('Classify transaction', style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white )),
            SizedBox( height: 10 ),
            Text('Classify this transaction into a particular category', style: TextStyle( fontSize: 16, color: Colors.white )),
          ],
        ),
      ),
    );
  }
}