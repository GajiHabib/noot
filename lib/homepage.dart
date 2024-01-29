// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:noots/appbar/savefolder.dart';
import 'package:noots/appbar/search.dart';
import 'package:noots/appbar/threedort.dart';
import 'package:noots/floatingAction/floatingAction.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 63, 31, 3),
              actions: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
