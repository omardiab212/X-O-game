import 'package:flutter/material.dart';
import 'package:xoame/GameScreen.dart';

class Startingscreen extends StatelessWidget {
  const Startingscreen({super.key});
  static  String  routeName = "Starting Screen ";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient:  LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [
                Colors.black ,
                Colors.deepPurple ,
                Colors.purple ,
                Colors.purpleAccent,
              ] ,
            )
        ),
            child:Scaffold(
              backgroundColor: Colors.transparent,
              body: SafeArea(child: Column(
                children: [
                  Expanded(child: Image.asset("assets/images/Frame.png" , color: Colors.lime,)) ,
                  Text("Pick who goes first?" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white ,
                    fontSize: 32 ,
                    fontWeight: .bold ,
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      spacing: 16,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.pushReplacementNamed(context,  Gamescreen.routeName , arguments: Player.X);
                            },
                            child: Container(
                              padding: EdgeInsetsGeometry.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32) ,
                                gradient: LinearGradient(
                                  begin: AlignmentGeometry.topLeft,
                                    end: AlignmentGeometry.bottomRight,
                                    colors:[
                                      Colors.black ,
                                      Colors.deepPurple,
                                      Colors.purple,
                                      Colors.deepPurple ,
                                      Colors.black87
                                    ]
                                )
                              ),
                               child:Image.asset("assets/images/Vector.png" ,color: Colors.pink),
                            ),
                          ),
                        ),

                        Expanded(
                          child: InkWell(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, Gamescreen.routeName , arguments: Player.O);
                            },
                            child: Container(
                              padding: EdgeInsetsGeometry.all(24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32) ,
                                gradient: LinearGradient(
                                  begin: AlignmentGeometry.topLeft,
                                    end: AlignmentGeometry.bottomRight,
                                    colors: [
                                      Colors.black ,
                                      Colors.deepPurple,
                                      Colors.purple,
                                      Colors.deepPurple ,
                                      Colors.black87
                                ]),
                              ),
                              child:Image.asset("assets/images/Ellipse.png" , color: Colors.lightGreenAccent,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              )),
            ) ,
    );
  }
}
