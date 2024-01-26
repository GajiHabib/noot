// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 244, 107, 10),
          onPressed:(){},
          child: Icon(Icons.add,color: Colors.white,)
          ),
        backgroundColor: Color.fromARGB(255, 242, 213, 145),
        body:CustomScrollView(
          
          slivers: [
            SliverAppBar(
           backgroundColor: Color.fromARGB(255, 63, 31, 3),
             actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child:IconButton(onPressed:(){
                  GestureDetector(
                   child: Icon(Icons.search),
                  );
                },
               icon:Icon(Icons.search)),
              ),
              SizedBox(width:30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('My Noot',style: TextStyle(fontSize:30 ),),
              ),
               SizedBox(width:35,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10) 
                  ),
                  child: Icon(Icons.add,color:Colors.black87,),
                ),
              ),
                SizedBox(width:30),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.more_vert),
              ),
             ],
           ),
          // IconButton(onPressed: (){},
          //  icon:Icon(Icons.update)),
            ],
        ),
    ),
    );
  }
}
