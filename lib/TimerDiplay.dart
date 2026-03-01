 import 'dart:async';

import 'package:flutter/material.dart';

class Timerdiplay extends StatefulWidget {
   const Timerdiplay({super.key});
  @override
  State<Timerdiplay> createState() => _TimerdiplayState();


}

int seconds = 0 ;
String displayTimer = "00:00" ;

class _TimerdiplayState extends State<Timerdiplay> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (_){
      seconds++ ;
      var minutes = seconds ~/ 60 ;
      var sec = seconds % 60 ;
      displayTimer = "${(minutes <10) ? "0$minutes" : "$minutes" } : ${(seconds < 10) ? "0$sec" : "$sec" }" ;
      setState(() {

      });
    });


  }
   @override


   Widget build(BuildContext context) {
     return  Padding(
       padding: const EdgeInsets.all(16),
       child: Container(
         alignment: Alignment.center,
         height: 90,
         decoration: BoxDecoration(
           color: Colors.grey ,
           borderRadius: BorderRadius.circular(50) ,),
         child: Text(displayTimer, style: TextStyle(
           fontSize: 40 ,
           fontWeight: .bold ,
         ),),
       ),
     );
   }
}
