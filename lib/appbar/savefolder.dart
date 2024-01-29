import 'package:flutter/material.dart';

class savefolder extends StatelessWidget {
  const savefolder({super.key});

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
                                    Text('create'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.black87,
                      ),
                    ),
                  );
                
  }
}