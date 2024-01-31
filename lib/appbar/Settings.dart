// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, body_might_complete_normally_nullable

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
          threescreen(datatex:'Enable Nowpad hgjhgjhghjjhkj', color: Colors.pink),
          threescreen(datatex:'thtiggar now sutah', color: Colors.deepPurple),
          threescreen(datatex:'thtiggar now sutah', color: const Color.fromARGB(255, 241, 203, 215)),
          threescreen(datatex:'thtiggar now sutah', color: Colors.deepPurpleAccent),
          threescreen(datatex:'thtiggar now sutah', color: Colors.purple),
            threescreen(datatex:'thtiggar now sutah', color: Colors.pink),
              threescreen(datatex:'thtiggar now sutah', color: Colors.blue),
                threescreen(datatex:'thtiggar now sutah', color: Colors.pink),
                  threescreen(datatex:'thtiggar now sutah', color: Colors.lightBlue),
                    threescreen(datatex:'thtiggar now sutah', color: Colors.amber),
                      threescreen(datatex:'thtiggar now sutah', color: Colors.cyan),
                        threescreen(datatex:'thtiggar now sutah', color: Colors.indigo),
            ],
          ),
          )
        ],
       ),
     ),
    );
  }
}
class threescreen extends StatelessWidget {
  final String datatex;
  final Color color;
  const threescreen({super.key, required this.datatex, required this.color});

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
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(datatex,style: TextStyle(fontSize:20,color: Colors.black87),),
                            Text(datatex),
                            Text(datatex),
                          ],
                        ),SizedBox(width: 10,),
                       Switch(
                        thumbColor:MaterialStateProperty.all(color),
                        value:Paint.enableDithering, 
                       onChanged:(value) {
                         
                       },)
                      ],
                    ),
                  ),
                ),
              );
  }
}