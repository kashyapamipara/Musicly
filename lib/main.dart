import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main(){
  runApp(
    myapp(),
  );



}

class myapp extends StatelessWidget {
  void s(int n){

      final player=AudioCache();
      player.play('assets_note$n.wav');

  }
  Expanded a({Color color,int n}){

   return
       Expanded(
      child: FlatButton(  
       child:Text(":)PRESS(:"),
        color: color,

        onPressed: (){
          s(n);

        },

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Scaffold(
           appBar: AppBar(
             backgroundColor:Colors.blueGrey[900],
             title:Center(child: Text("THE MUSICLY:"))
           ),
           body:SafeArea(
             child: Column(
 crossAxisAlignment: CrossAxisAlignment.stretch,

               children: <Widget> [



                   a(color: Colors.red,n: 1),
               a(color: Colors.yellow,n: 2),
             a(color: Colors.white,n: 3),
        a(color: Colors.green,n: 4),
    a(color: Colors.pink,n: 5),
    a(color: Colors.blue,n: 6),
    a(color: Colors.orange,n: 7),





           ],
             ),
           ),

         ),


    );
  }
}
