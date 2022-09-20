// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_cw6/models/buildings.dart';

class BuildingScreen extends StatelessWidget {
  const BuildingScreen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(building.name),
        backgroundColor: Color.fromARGB(255, 255, 168, 197),
      ),
      body: Column(
        children: [
          Center(
            heightFactor: 1.3,
            child: CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage(building.imgUrl),
            ),
          ),
          // ignore: prefer_const_constructors

          Text(building.name,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
          Container(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              building.dscrp,
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
