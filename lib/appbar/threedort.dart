// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:noots/appbar/Settings.dart';
import 'package:noots/appbar/selecte.dart';

import 'Remain.dart';

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
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                actions: [
                                  Text(
                                    'Sort',
                                    style: TextStyle(fontSize: 80),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Alphabetical',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Created',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'lastmodified',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'show folders last',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Reverse order',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text('Done')),
                                    ],
                                  )
                                ],
                              ));
                    },
                    child: Text(
                      'sort',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Selecte(),
                          ));
                    },
                    child: Text(
                      'Select',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            Column(
                              children: [
                                Text(
                                  'Reminders',
                                  style: TextStyle(fontSize: 50),
                                ),
                                Card(
                                  child: Container(
                                      height:100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(179, 237, 220, 220),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Icon(Icons.notification_add,size: 80,color: Colors.black87,)
                                      ),
                                ),
                                Text(
                                    'Get things done with reminders.Create riminders to notify yourself at a designated rime. Enable reminders by activating Write Now Plus!'),
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => Remin(), ));
                                  },
                                  style:ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all<Color>(Colors.pink)
                                  ),
                                 child:Text('Lets go',style: TextStyle(fontSize: 30),)),
                             TextButton(onPressed: (){
                              Navigator.pop(context);
                             },
                              child:Text('Not now',style: TextStyle(fontSize: 50,
                              color: Colors.red),))

                              ],
                            )
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'Reminders',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder:(context) =>Setting()));
                    },
                    child: Text(
                      'Setting',
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
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
