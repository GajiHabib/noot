// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});
  @override
  Widget build(BuildContext context) {
    // List habib =[Color];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 186, 86),
      appBar: AppBar(title:Text('Settings'),
      backgroundColor: Color.fromARGB(255, 193, 107, 8),
      actions: [
        Icon(Icons.more_vert),
      ],
      ),
     body: SafeArea(
       child: Expanded(
         child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Icon(Icons.edit,size:50,),
                  SizedBox(width: 30,),
                  Text('NOWPAD',style: TextStyle(fontSize:50),),
                ],),
              ),
            ),
            Expanded(
              child: ListView(
               children: [
                Column(
                  children: [
                    Text('Enable Nowpad',style: TextStyle(fontSize: 50),),
                    Expanded(
                      child: Row(
                        children: [
                          Text('Take Notes anywhere by swiping form your screens edge'),
                          LinearProgressIndicator()
                        ],
                      ),
                    ),
                  ],
                )
               ],
              ),
            )
          ],
         ),
       ),
     ),
    );
  }
}