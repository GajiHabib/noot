// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class floationg extends StatelessWidget {
  const floationg({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 163, 64),
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 128, 65, 3),
          title: Text('12/30/2024',),actions: [
            IconButton(onPressed:(){},
             icon:Icon(Icons.more_vert))
          ],),
        body: Column(
          children: [
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            TextField(),
            Expanded(
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Icon(Icons.battery_unknown_rounded),
              Icon(Icons.south_rounded)
              ],),
            )
        
          ],
        ),
      ),
    );
    
  }
}