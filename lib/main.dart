import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:disenos/screens/home_screen.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light );

    return MaterialApp(
      debugShowCheckedModeBanner: false,      // Mode banner displayed in top rightd
      title: 'Material App',
      theme: ThemeData.dark(),
      // If you use routes an initialRoute --> home attribute won't be display
      // home: Center(
      //   child: Text('Hello'),
      // ),
      // Switch the initialRoute, to display different screens
      initialRoute: 'basic_design',
      // initialRoute: 'scroll_screen',
      // initialRoute: 'home_screen',
      routes: {
        //  Since BuildContext isn't used --> Use '_'
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(), 
        'home_screen'  : ( _ ) => HomeScreen(), 
      },
    );
  }
}
