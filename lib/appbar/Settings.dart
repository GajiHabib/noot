// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, body_might_complete_normally_nullable, camel_case_types

import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});
  @override
  Widget build(BuildContext context) {
    List habib =[Color];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 186, 86),
      appBar: AppBar(title:Text('Settings'),
      backgroundColor: Color.fromARGB(255, 193, 107, 8),
      actions: [
        Icon(Icons.more_vert),
      ],
      ),
     body: SafeArea(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Icon(Icons.edit,size:50,),
              SizedBox(width: 30,),
              Text('NOWPAD',style: TextStyle(fontSize:50),),
            ],),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
            children: [
             threescreen(color:Colors.amber, sak:'Enable Nowpad',
              saki:'Take Notes anyhere by swiping', sakib:'form your screen Edg'),
               threescreen(color:Colors.pinkAccent, sak:'Trigger Zone Setup',
              saki:'Enable Nowpad to configure', sakib:'Trigger Zone'),
               threescreen(color:Colors.deepPurpleAccent, sak:'Reopon Last Note',
              saki:'When Nowpad is Launched', sakib:'Reopon'),
              threescreen(color: Color.fromARGB(255, 40, 9, 125), sak:'Hide Active Natification',
              saki:'turn of or silence`note pad active form app', sakib:'settings to hide this active natification'),
                threescreen(color: Colors.cyan, sak:'Default folder',
              saki:'note create in nowpad save here', sakib:'My nots by Default'),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Icon(Icons.list_rounded,size:50,),
              SizedBox(width: 40,),
              Text('Genarel',style: TextStyle(fontSize: 50),)
            ],),
          )
        ],
       ),
     ),
    );
  }
}
class threescreen extends StatelessWidget {
  final String sak;
  final String saki;
  final String sakib;
  final Color color;
  const threescreen({super.key, required this.color, required this.sak, required this.saki, required this.sakib});

  @override
  Widget build(BuildContext context) {
    return Card(
                elevation:50,
                color: Colors.white,
                margin: EdgeInsets.all(10),
               shadowColor: Colors.white70,
                child: Container(
                  height:100,
                  width:20,
                   color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(sak,style: TextStyle(fontSize:25,color: Colors.black87),),
                            Text(saki,style: TextStyle(fontSize:14,color: Colors.black87),),
                            Text(sakib,style: TextStyle(fontSize:14,color: Colors.black87),),
                          ],
                        ),
                        SizedBox(width:40,),
                       Switch(
                        thumbColor:MaterialStateProperty.all(color),
                        value:Paint.enableDithering, 
                       onChanged:(value) {
                         
                       },),
                      ],
                    ),
                  ),
                ),
              );
  }
}