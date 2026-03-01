 import 'package:flutter/material.dart';
import 'package:xoame/GameScreen.dart';
import 'package:xoame/StartingScreen.dart';

void main(){
  runApp(myGame());
 }

 class myGame extends StatelessWidget {
   const myGame({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: Startingscreen.routeName,
       routes: {
        Gamescreen.routeName : (context) => Gamescreen(player: ModalRoute.settingsOf(context)?.arguments as Player,) ,
         Startingscreen.routeName : (_) => Startingscreen()
       },
     );
   }
 }
