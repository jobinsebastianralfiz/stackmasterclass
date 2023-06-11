import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masteringstack/constants/colors.dart';
import 'package:masteringstack/constants/decoration.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  AppColors _appColors = AppColors();
  CustomDecoration _customDecoration = CustomDecoration();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: _appColors.cardColor,
        title: const Text("DoctorPlus"),
      ),
      body: Container(
padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 540,
              padding: EdgeInsets.all(10),
              // color: Colors.yellow,
              child: Stack(
                children: [


                  Center(
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        height: 450,
                        width: size.width*0.79,
                        decoration: _customDecoration.cardDecoration,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 35,
                    right: -12,
                    child: Container(
                      height: 300,
                      child: Image.asset('assets/images/man.png',),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 20,
                    child: Container(
                      child:Center(
                        child: Text("Available",style: TextStyle(color: Colors.white),),
                      ),
                      height: 50,
                      width: 150,
                      decoration: _customDecoration.tileDecoration,
                    ),
                  ),

                  Positioned(
                   bottom: 150,
                    left: 40,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child:Center(
                        child: Text("Book Now",style: TextStyle(color: Colors.white),),
                      ),
                      height: 45,

                      decoration: _customDecoration.tileDecoration,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    child: Container(
                        height: 100,

                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Heart Surgeon",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )),
                  ),

                  Positioned(
                    left: 40,
                    top: 160,
                    child: Container(

                      width: size.width/3,

                      child:  Text(
                       """Lorem industry. Lhas been the industry's standard dummy text ever since the 1500s,"""
                        ,style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  Positioned(

                      right: 30,
                      top: 85,
                      child: Container(
                    height: 120,
                    width: 80,
                    //color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FaIcon(FontAwesomeIcons.envelope,color: Colors.white,size: 24,),
                        FaIcon(FontAwesomeIcons.video,color: Colors.white,size: 24),
                        FaIcon(FontAwesomeIcons.phone,color: Colors.white,size: 24),

                      ],
                    ),
                  )),

                  Positioned(
                    bottom: 100,
                    left: 40,
                    child: Container(

                      child: Row(

                        children: [
                          FaIcon(FontAwesomeIcons.solidStar,color: Colors.orangeAccent,size: 16,),
                          SizedBox(width: 2,),
                          FaIcon(FontAwesomeIcons.solidStar,color: Colors.orangeAccent,size: 16,),
                          SizedBox(width: 2,),
                          FaIcon(FontAwesomeIcons.solidStar,color: Colors.orangeAccent,size: 16,),
                          SizedBox(width: 2,),
                          FaIcon(FontAwesomeIcons.solidStar,color: Colors.orangeAccent,size: 16,),
                          SizedBox(width: 2,),
                          FaIcon(FontAwesomeIcons.star,color: Colors.grey,size: 16,),
                        ],
                      ),
                    ),
                  )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
