// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Selecte extends StatelessWidget {
  const Selecte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 138, 43),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 156, 109, 16),
      title: Text(' 5 selecte'),
      actions: [
        Icon(Icons.delete),
        SizedBox(width: 50,),
        Icon(Icons.more_vert)
      ],
      ),
    );
  }
}