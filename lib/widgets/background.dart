import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  // Description to paint a box
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,     // By default the LinearGradient is from left --> right
        end: Alignment.bottomCenter,
        stops: [0.2, 0.8],              // Moment to start the gradient
        colors: [
          Color(0xff2E305F),
          Color(0xff202333)
        ]
      )
  );

  @override
  Widget build(BuildContext context) {
    return Stack(     // Allows placing widgets one in top to each other. Desired design has got a pink box and a gradient purple --> blue
      children: [
        // Purple Gradient
        Container(      // Wrap under Container to add the 'decoration', not possible directly via Scaffold
            decoration: boxDecoration,
            // color: Colors.red          // Normally it's added to check the space which occupies
        ),

        // Pink box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
        ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(      // This BoxDecoration could be extracted also
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [     // >=2 colors
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}