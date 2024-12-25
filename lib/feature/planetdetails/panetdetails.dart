import 'package:flutter/material.dart';

import '../../core/constant/appasstes.dart';
import '../../core/theme/app_color.dart';

class Planetdetails extends StatelessWidget {
  static const planet_details_name ='/planet';
  const Planetdetails({super.key});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor:Appcolor.background_color ,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height:size.height*(144/812),
              width: size.width,
              child: Stack(
                children: [
                  Align(
                    alignment :Alignment.topCenter,
                    child: Image.asset(AppAssets.rectangle4
                      ,fit: BoxFit.cover,
                      width: size.width,
                    ),
                  ),
                  Align(
                    alignment :Alignment.topCenter,
                    child:Text('Earth'
                        ,style: TextStyle(
                        color: Appcolor.secndry_color,
                        fontSize:24,
                        fontWeight: FontWeight.w700
                    ),),
                    ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(16),
                          backgroundColor: Appcolor.primary_color

                      ),
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment :Alignment.bottomLeft,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Text('Earth: Our Blue Marble'
                        ,style: TextStyle(
                            color: Appcolor.secndry_color,
                            fontSize:24,
                            fontWeight: FontWeight.w700
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:size.height*(343/812) ,
              width:size.width*(343/375) ,
              child: Image.asset(AppAssets.earth2),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('About'
                      ,style: TextStyle(
                          color: Appcolor.secndry_color,
                          fontSize:24,
                          fontWeight: FontWeight.w700
                      ),),
                  ),

                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 220,
                  width: 341,
                  child: Text('Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Appcolor.secndry_color,
                    ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Distance from Sun (km) : 149598026\n'
                        'Length of Day (hours) : 23.93\n'
                        'Orbital Period (Earth years) : 1\n'
                        'Radius (km) : 6371\n'
                        'Mass (kg) : 5.972 × 10²⁴\n'
                        'Gravity (m/s²) : 9.81\n'
                        'Surface Area (km²) : 5.10 × 10⁸\n'
                      ,style: TextStyle(
                          color: Appcolor.secndry_color,
                          fontSize:16,
                          fontWeight: FontWeight.w700
                      ),),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
