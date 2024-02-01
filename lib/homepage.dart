// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, camel_case_types, unused_local_variable

import 'package:flutter/material.dart';
import 'package:noots/appbar/savefolder.dart';
import 'package:noots/appbar/search.dart';
import 'package:noots/appbar/threedort.dart';
import 'package:noots/floatingAction/floatingAction.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}
  

class _homepageState extends State<homepage> {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 244, 107, 10),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => floationg(),
                ));
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          )),
      backgroundColor: Color.fromARGB(255, 242, 213, 145),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 63, 31, 3), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => search(),
                  ));
            },
            icon: Icon(Icons.search)),
        SizedBox(width: 30),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'My Noot',
            style: TextStyle(fontSize: 30),
          ),
        ),
        SizedBox(
          width: 35,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: savefolder(),
        ),
        SizedBox(width: 20),
        threedort(),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.edit,size: 200,color: Color.fromARGB(255, 159, 157, 157),),
            Center(child: Text('top+to create poost',style: TextStyle(fontSize:40,color: const Color.fromARGB(255, 151, 147, 147)),)),
            ElevatedButton(onPressed: (){
              // addrees();
              getAllpost();
            },
             child:Text('Add')), 
          ],
        ),
      ),
    ));
  }

  Future<void>addrees()async{
    var collection=FirebaseFirestore.instance.collection('Note');
    Map<String,dynamic> minhaj={
      'name':'sufian',
      'address':'monohordi',
      
    };
    collection.add(minhaj);
  }
   Future getAllpost() async {
    var dhumghat = [];
    var collRef = await FirebaseFirestore.instance.collection('addbet').get();
    for (var doc in collRef.docs) {
      var name = doc.get('name');
      var price = doc.get('address');
      var title = doc.get('jela');
      var thana = doc.get('thana');
      print(thana);
      var pagla =
        habib(addrees: price, name: name, jela:title, thana: thana);
           print(pagla.name);
          dhumghat.add(pagla);
                 
    }
    return dhumghat;
  }
}
class habib{
  final String addrees;
  final String name;
  final String jela;
  final String thana;

  habib({required this.addrees,required this.name,required this.jela,required this.thana});



 
 
}