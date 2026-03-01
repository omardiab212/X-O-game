import 'dart:math';

import 'package:flutter/material.dart';
import 'package:xoame/TimerDiplay.dart';
import 'package:xoame/xoGameButton.dart';

enum Player {X , O }
class Gamescreen extends StatefulWidget {
   Gamescreen({ required this.player , super.key});
   static  String  routeName = "Game Screen ";
 Player player ;

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
List<Player?> board = List.filled(9, null) ;
late String  displayText = "it is player ${widget.player == Player.X ? "X" : "O"} turn" ;

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: SafeArea(
            child: Container(
              padding: EdgeInsetsGeometry.all(16),
              width: double.infinity,

              child: Column(
                spacing: 16,
                children:[
                 Timerdiplay(),

                  Text(displayText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 35 ,
                    fontWeight: .bold ,
                    color: Colors.lightGreenAccent ,
                  ),) ,

                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black54 ,
                        borderRadius: BorderRadius.circular(32)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Stack(
                          children:[
                            Column(
                            children: [
                              Spacer() ,
                              Divider( thickness: 5,) ,
                              Spacer() ,
                              Divider(thickness: 5,),
                              Spacer()
                            ],
                          ),

                            Row(
                              children: [
                                Spacer() ,
                                VerticalDivider( thickness: 5,) ,
                                Spacer() ,
                                VerticalDivider(thickness: 5,),
                                Spacer()
                              ],
                            ),

                            Column(
                              children: [
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Xogamebutton(player: board[0] , index: 0, onPress: onClick, )) ,
                                    Expanded(child: Xogamebutton(player: board[1] , index: 1, onPress: onClick,   )) ,
                                    Expanded(child: Xogamebutton(player: board[2] , index: 2, onPress: onClick,)) ,
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Xogamebutton(player: board[3] , index: 3, onPress: onClick,)) ,
                                    Expanded(child: Xogamebutton(player: board[4] , index: 4, onPress: onClick,)) ,
                                    Expanded(child: Xogamebutton(player: board[5] , index: 5, onPress: onClick,)) ,
                                  ],
                                )),
                                Expanded(child: Row(
                                  children: [
                                    Expanded(child: Xogamebutton(player: board[6] , index: 6, onPress: onClick,)) ,
                                    Expanded(child: Xogamebutton(player: board[7] , index: 7, onPress: onClick,)) ,
                                    Expanded(child: Xogamebutton(player: board[8] , index: 8, onPress: onClick,)) ,
                                  ],
                                ))
                              ],


                            )

                          ]
                        ),
                      ),
                    ),
                  )

          ]
              ),
            ),
          ),
        ),
      ),
    );

  }
void onClick(int index) {
  if(board[index] != null) return ;
  board[index] = widget.player ;
  var isWinner =checkWinner();
  if(isWinner){
    board = List.filled(9, null) ;
    displayText = "player ${widget.player == Player.X ? "X" : "O"} win ";
  }else {
    if(board.every((e) => e != null )){
      board = List.filled(9, null) ;
      displayText = " Draw ";
    }else{
      displayText = "player ${widget.player == Player.X ? "O" : "X"} Turn ";

    }

  }
 widget.player = widget.player == Player.X ? Player.O : Player.X ;
  setState(() {
  });}

  bool checkWinner() {
    if( board[0] == board[1] && board[1] == board[2] && board[2] != null) {
      return true;
    } else if(board[3] == board[4] && board[4] == board[5] && board[5] != null){
      return true;
    }else if(board[6] == board[7] && board[7] == board[8] && board[8] != null){
      return true;
    }else if(board[0] == board[3] && board[3] == board[6] && board[6] != null){
      return true;
    }else if(board[1] == board[4] && board[4] == board[7] && board[7] != null){
      return true;
    }else if(board[2] == board[5] && board[5] == board[8] && board[8] != null){
      return true;
    }else if(board[0] == board[4] && board[4] == board[8] && board[8] != null){
      return true;
    }else if(board[2] == board[4] && board[4] == board[6] && board[6] != null){
      return true;
    }
    else {
      return false ;
    }
  }



}

