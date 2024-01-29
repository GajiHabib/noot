// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:noots/homepage.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
               color: Colors.amber
              ),
              child: Row(children: [
                IconButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute
                (builder:(context) => homepage(),));
                }, icon:Icon(Icons.arrow_back_ios_new)),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:'search....'
                    ),
                  ),
                ),
                Icon(Icons.add)
              ],),
            ),
            SizedBox(height: 100,),
           Center(child:Padding(
             padding: const EdgeInsets.all(100),
             child: Column(
               children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                ),
                child: Icon(Icons.search,size: 100,),
              ),
              SizedBox(height:50,),
              Text('search nots and folders',style: TextStyle(fontSize:15),)
               ],
             ),
           )),
           
          ],
        ),
      ),
    );
  }
}