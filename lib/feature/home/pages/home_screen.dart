import 'package:flutter/material.dart';
import 'package:space_app/core/theme/app_color.dart';

class HomeScreen extends StatelessWidget {
  static String routename ='HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Appcolor.background_color,
    );
  }
}
