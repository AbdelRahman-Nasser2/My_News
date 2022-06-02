// ignore_for_file: prefer_const_constructors

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/components/components.dart';

import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()
        // ..getDataScience()
        ..getDataBusiness()

        // ..getDataSports(),
        ..getData(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (BuildContext context, AppStates state) {},
          builder: (BuildContext context, AppStates state) {
            context;
            var list = AppCubit.get(context);
            List<List<dynamic>> liste = [list.business, list.articles];

            return ConditionalBuilder(
              condition: state is! AppGetArticlesBusinessLoadingState,
              builder: (context) => buildCategoryList(
                context,
                list: list.total,
              ),
              fallback: (context) => Center(
                  child: CircularProgressIndicator(
                color: Colors.blueGrey,
              )),
            );
          }),
    );
  }
}
