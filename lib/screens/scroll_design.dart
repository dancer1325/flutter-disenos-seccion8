import 'dart:ui';

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  // Description to paint a box
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,   // By default the LinearGradient is from left --> right
        end: Alignment.bottomCenter,
        stops: [0.5,0.5],             // Moment to start the gradien
        colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6)
        ])
  );

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        body: Container(    // Wrap under Container to add the 'decoration', not possible directly via Scaffold
          decoration: boxDecoration,    // Add it, because we are using 'BouncingScrollPhysics()'
          child: PageView(      // Scrollable list, which works page by page. By default, the scroll is horizontally
            physics: BouncingScrollPhysics(),     // Allows scrolling beyond the limits, although there are no widgets. Behavior by default in IoS
            scrollDirection: Axis.vertical,   // By default, the scroll is horizontally
            children: [
              Page1(),
              Page2()
        ],
      ),
    )
   );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(   // Allows placing widgets one in top to each other
      children: [
        // Background
        Background(),

        // Main Content - Column
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Create variable because it's applied several times
    final textStyle = TextStyle( fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white );
    
    return SafeArea(      // Wrap under SafeArea, to add enough padding
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox( height: 30 ),                 // Add whitespace manually
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),           // Add whitespace manually. child    It's a mandatory attribute
          Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(     // Wrap under Container to adjust the style (color, height, ...)
      color: Color(0xff30BAD6),     // Background color to the whole container. Same to the BoxDecoration
      height: double.infinity,      // Take all the device's size
      alignment: Alignment.topCenter,
      child: Image( image: AssetImage('assets/scroll-1.png'), )
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(     // Wrap under Container, to add a background color
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},      // Define it, but no action is triggered
          child: Padding(       // Wrap under Padding, to adjust the padding
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 30 ) ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}