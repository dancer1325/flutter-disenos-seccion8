import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/home_screen.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // It comes in 'package:flutter/services.dart'
    // Specify the style to use for the system overlays that are visible (Time, battery level, signal, ...)
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );

    return MaterialApp(
      debugShowCheckedModeBanner: false,      // Mode banner displayed in top right
      title: 'Material App',
      theme: ThemeData.dark(),      // Blur works better for dark themes
      // If you use routes an initialRoute --> home attribute won't be display
      // home: Center(
      //   child: Text('Hello'),
      // ),
      // Switch the initialRoute, to display different screens
      // initialRoute: 'basic_design',
      // initialRoute: 'scroll_screen',
      initialRoute: 'home_screen',
      routes: {
        //  Since BuildContext isn't used --> Use '_'
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(), 
        'home_screen'  : ( _ ) => HomeScreen(), 
      },
    );
  }
}
