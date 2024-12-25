import 'package:flutter/material.dart';
import 'package:space_app/core/constant/appasstes.dart';
import 'package:space_app/core/theme/app_color.dart';
import 'package:space_app/feature/planetdetails/panetdetails.dart';

class HomeScreen extends StatefulWidget {
  static const  routename ='/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Map<String, String>> solarSystem = [
    {
      'name': 'Sun',
      'image': AppAssets.sun,
      'description': 'Explore the Sun',
    },
    {
      'name': 'Mercury',
      'image': AppAssets.mercury,
      'description': 'Explore Mercury',
    },
    {
      'name': 'Venus',
      'image': AppAssets.venus,
      'description': 'Explore Venus',
    },
    {
      'name': 'Earth',
      'image': AppAssets.earth,
      'description': 'Explore Earth',
    },
    {
      'name': 'Mars',
      'image': AppAssets.mars,
      'description': 'Explore Mars',
    },
    {
      'name': 'Jupiter',
      'image': AppAssets.jupiter,
      'description': 'Explore Jupiter',
    },
    {
      'name': 'Saturn',
      'image': AppAssets.saturn,
      'description': 'Explore Saturn',
    },
    {
      'name': 'Uranus',
      'image': AppAssets.uranus,
      'description': 'Explore Uranus',
    },
    {
      'name': 'Neptune',
      'image': AppAssets.neptune,
      'description': 'Explore Neptune',
    },
  ];
  int _currentPage = 0;

  void _goToNextPage() {
    if (_currentPage < solarSystem.length - 1) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToPreviousPage() {
    if (_currentPage > 0) {
      _currentPage--;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Appcolor.background_color,
      body: Column(
        children: [
          SizedBox(
            height:size.height*(237/812) ,
            width: size.width,
            child: Stack(
              children: [
               Align(
                   alignment: Alignment.topCenter,
                   child: Image.asset(AppAssets.rectangle4
                   ,fit: BoxFit.cover,
                     width: size.width,
                   ),

               ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Explore',style: TextStyle(fontSize: 24,color: Appcolor.secndry_color),),
                    )
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('Which  planet \n would you like to explore?',style: TextStyle(fontSize: 24,color: Appcolor.secndry_color),),
                    )
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width*(342/375),
           height: size.height*(500/812),
           child:PageView.builder(
               controller: _pageController,
               onPageChanged: (index) {
                 setState(() {
                   _currentPage = index;
                 });
               },
             itemCount: solarSystem.length,
             itemBuilder: (context,index){
               final celestyalsystem =solarSystem[index];
               return Stack(
                 children: [
                   Align(
                     alignment: Alignment.topCenter,
                     child: Image.asset(celestyalsystem['image']!,
                       fit: BoxFit.contain,
                       height: size.height*(339/812),
                       width: size.width*(342/375),
                     ),
                   ),
                   SizedBox(height: 10,),
                   Align(
                     alignment: Alignment.center,
                     child: Container(
                       margin:  EdgeInsets.only(top:size.height*.30 ),
                       child: Text(
                         celestyalsystem['name']!,
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 24,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   ),
                     Align(
                       alignment: Alignment.centerLeft,
                       child: Container(
                         margin:  EdgeInsets.only(top:size.height*.30 ),
                         child: ElevatedButton(
                         onPressed: () {
                           _goToPreviousPage();
                                        },
                                        style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(16),
                                         backgroundColor: Appcolor.primary_color

                                        ),
                                        child: Icon(Icons.arrow_back, color: Colors.white),
                                        ),
                       ),
                     ),
                   Align(
                     alignment: Alignment.centerRight,
                     child: Container(
                       margin:  EdgeInsets.only(top:size.height*.30 ),
                       child: ElevatedButton(
                         onPressed: () {
                        _goToNextPage();
                         },
                         style: ElevatedButton.styleFrom(
                           shape: CircleBorder(),
                           padding: EdgeInsets.all(16),
                             backgroundColor: Appcolor.primary_color
                         ),
                         child: Icon(Icons.arrow_forward, color: Colors.white),
                       ),
                     ),
                   ),
                   GestureDetector(
                     onTap:(){
                       Navigator.popAndPushNamed(context, Planetdetails.planet_details_name);
                     },
                     child: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16),
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
                                 child: Text('Explor ${celestyalsystem['name']!}'
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
               );
    }
           ) ,
          ),

        ],
      ),
    );
  }
}
