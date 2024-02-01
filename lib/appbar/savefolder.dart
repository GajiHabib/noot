// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class savefolder extends StatefulWidget {
  const savefolder({super.key});

  @override
  State<savefolder> createState() => _savefolderState();
}

class _savefolderState extends State<savefolder> {
    // List<Folder> folders = [];
  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('New Folder'),
                            actions: [
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Folder name',
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('Cancel'),
                                   TextButton(onPressed:(){
                                    
                                   },
                                    child:  Text('create'),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  );
                
  }
}