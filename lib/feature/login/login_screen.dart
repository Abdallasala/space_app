import 'package:flutter/material.dart';
import 'package:space_app/core/constant/appasstes.dart';
import 'package:space_app/core/theme/app_color.dart';
import 'package:space_app/feature/home/pages/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const  loginname ='/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Appcolor.background_color,
      body: Stack(
        children: [
         Align(
             alignment: Alignment.centerLeft,
             child: Image.asset(AppAssets.backgroundsplash)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Explore \n The \n Universe',

              style: TextStyle(
              color: Appcolor.secndry_color,
              fontSize: 48,
                fontWeight: FontWeight.w900
            ),),
          ),
          GestureDetector(
            onTap:(){
       Navigator.popAndPushNamed(context, HomeScreen.routename);
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height*(40/812),
                  width: size.width*(342/375),
                 // alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    color: Appcolor.primary_color,
                    borderRadius: BorderRadius.circular(29),

                  ),
                  child: Row(
                   // mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Explor'
                      ,
                        style: TextStyle(
                          color: Appcolor.secndry_color,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Appcolor.secndry_color,
                    )
                  ],
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
