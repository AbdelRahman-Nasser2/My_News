// ignore_for_file: camel_case_types, file_names, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';


class scienceScreen extends StatelessWidget {
  const scienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context)=>AppCubit(),
        child: BlocConsumer<AppCubit,AppStates>(
            listener:(BuildContext context,AppStates state){} ,
            builder: (BuildContext context,AppStates state)
            {
              AppCubit cubit=AppCubit.get(context);
              return
                Scaffold(
                  body: Center(
                      child: Text(
                        "Science Screen",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                  ),
                );
            }

        ),
      );
  }

}