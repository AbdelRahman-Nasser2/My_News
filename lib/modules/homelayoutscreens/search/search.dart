// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/components/components.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';

class searchScreen extends StatelessWidget {
  searchScreen({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  String? tittle;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list = AppCubit.get(context).search;
          return Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: text(
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Search must not be Empty";
                      }
                      return null;
                    },
                    onchange: (value) {
                      AppCubit.get(context).getDataSearch(value);
                    },
                    controller: searchController,
                    input: TextInputType.text,
                    hint: "Search",
                    label: "Search",
                    prifix: Icons.search_rounded,
                  ),
                ),
                Expanded(
                  child: buildCategoryList(
                    context,
                    list: list,
                  ),
                )
              ],
            ),
          );
        });
  }
}

///BlocConsumer<AppCubit, AppStates>(
//       listener: (context, state) {},
//       builder: (context, state) {
//         var list = AppCubit.get(context).search;
