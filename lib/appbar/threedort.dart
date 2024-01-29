// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class threedort extends StatelessWidget {
  const threedort({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                actions: [
                  MaterialButton(
                    onPressed: () {
                      showDialog(context: context,
                      builder:(context) =>AlertDialog(
                        actions: [
                          Text('Sort',style: TextStyle(fontSize: 80),),
                          Column(children: [
                            Row(children: [
                              Container(
                                height:40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black87,)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Alphabetical',style: 
                              TextStyle(fontSize:30),),
                            ],),
                             Row(children: [
                              Container(
                                height:40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black87,)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Created',style: 
                              TextStyle(fontSize:30),),
                            ],),
                             Row(children: [
                              Container(
                                height:40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.black87,)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('lastmodified',style: 
                              TextStyle(fontSize:30),),
                            ],),
                             Row(children: [
                              Container(
                                height:30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  
                                  border: Border.all(color: Colors.black87,)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('show folders last',style: 
                              TextStyle(fontSize:30),),
                            ],),
                             Row(children: [
                              Container(
                                height:30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  
                                  border: Border.all(color: Colors.black87,)
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text('Reverse order',style: 
                              TextStyle(fontSize:30),),
                            ],),
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child:Text('Done')),
                          ],)
                        ],
                      ));
                    },
                    child: Center(
                        child: Text(
                      'sort',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {
                      
                    },
                    child: Center(
                        child: Text(
                      'Select',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Reminders',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Trash',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Baskup',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'open',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Setting',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                    MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      'Upgrade to Plus',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    )),
                  ),
                ],
              ),
            );
          },
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }
}
