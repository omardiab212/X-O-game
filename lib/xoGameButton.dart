import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xoame/GameScreen.dart';

class Xogamebutton extends StatelessWidget {
  Xogamebutton({ required this.onPress, required this.index , this.player  ,  super.key});
  Player  ? player ;
  int index ;
  final void Function (int) onPress;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        onPress(index) ;
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: switch(player){
              null => SizedBox() ,
              Player.X =>Image.asset("assets/images/Vector.png"   , color: Colors.pink),
              Player.O => Image.asset("assets/images/Ellipse.png" , color: Colors.lightGreenAccent,),
          },
        ),
      ),
    );
  }
}
