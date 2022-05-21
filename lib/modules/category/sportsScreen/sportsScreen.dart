// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';

class sportsScreen extends StatelessWidget {
  const sportsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (BuildContext context, AppStates state) {},
          builder: (BuildContext context, AppStates state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              body: Center(
                child: Text(
                  "Sports Screen",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
