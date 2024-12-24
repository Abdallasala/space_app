import 'package:flutter/material.dart';
import 'package:space_app/feature/login/login_screen.dart';

import 'feature/home/pages/home_screen.dart';
import 'feature/planetdetails/panetdetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //initialRoute: LoginScreen.loginname,
      initialRoute:HomeScreen.routename,
    routes: {
      LoginScreen.loginname:(context) =>LoginScreen(),

      HomeScreen.routename:(_){
        return HomeScreen();
      },
      Planetdetails.planet_details_name:(context) =>Planetdetails(),
    },

     darkTheme:ThemeData(
       brightness: Brightness.dark
     ) ,
    );
  }
}
