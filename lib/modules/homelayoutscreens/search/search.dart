// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mynews/shared/components.dart';

class searchScreen extends StatelessWidget {
  searchScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: text(
            validate: (value) {
              if (value!.isEmpty) {
                return "Search must not be Empty";
              }
              return null;
            },
            controller: searchController,
            input: TextInputType.text,
            hint: "Search",
            label: "Search",
            prifix: Icons.search_rounded,
          ),
        ),
      ],
    ));
  }
}
