// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/components/components.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = AppCubit.get(context).business;

    return BlocProvider(
      create: (BuildContext context) => AppCubit()
        ..getDataScience()
        ..getDataBusiness()
        ..getDataSports(),
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (BuildContext context, AppStates state) {},
          builder: (BuildContext context, AppStates state) {
            context;
            var list = AppCubit.get(context);

            return DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                      // isScrollable: true,
                      indicatorColor: Colors.blueGrey.withOpacity(0.5),
                      labelColor: Colors.black,
                      indicatorPadding:
                          EdgeInsets.only(top: 60, left: 28, right: 28),
                      indicatorWeight: 2,
                      labelPadding: EdgeInsets.symmetric(horizontal: 5),
                      automaticIndicatorColorAdjustment: false,
                      unselectedLabelColor: Colors.blueGrey,
                      splashBorderRadius: BorderRadius.circular(28),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(28),
// color:Theme.of(context)?Colors.white :HexColor('333739'),
// Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer,
                                      spreadRadius: 5)
                                ]),
                            child: Tab(
                              icon: Icon(
                                Icons.science,
                                color: Colors.deepPurple,
                              ),
                              child: Text(
                                "Science",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.deepPurple),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(28),
// color:Theme.of(context)?Colors.white :HexColor('333739'),
// Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer,
                                      spreadRadius: 5)
                                ]),
                            child: Tab(
                              icon: Icon(
                                Icons.business,
                                color: Colors.teal,
                              ),
                              child: Text(
                                "Business",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.teal),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            // color: Colors.grey,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(28),
// color:Theme.of(context)?Colors.white :HexColor('333739'),
// Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer,
                                      spreadRadius: 5)
                                ]),
                            child: Tab(
                              icon: Icon(
                                Icons.sports_baseball_outlined,
                                color: Colors.pink,
                              ),
                              child: Text(
                                "Sports",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.pink),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                body: ConditionalBuilder(
                  condition: state is! AppGetArticlesScienceLoadingState,
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBarView(
                        dragStartBehavior: DragStartBehavior.down,
                        children: [
                          ConditionalBuilder(
                            condition:
                                state is! AppGetArticlesSportsLoadingState,
                            builder: (context) =>
                                buildCategoryList(context, list: list.sports),
                            fallback: (context) => Center(
                                child: CircularProgressIndicator(
                              color: Colors.blueGrey,
                            )),
                          ),
                          ConditionalBuilder(
                            condition:
                                state is! AppGetArticlesBusinessLoadingState,
                            builder: (context) =>
                                buildCategoryList(context, list: list.business),
                            fallback: (context) => Center(
                                child: CircularProgressIndicator(
                              color: Colors.blueGrey,
                            )),
                          ),
                          ConditionalBuilder(
                            condition:
                                state is! AppGetArticlesSportsLoadingState,
                            builder: (context) =>
                                buildCategoryList(context, list: list.sports),
                            fallback: (context) => Center(
                                child: CircularProgressIndicator(
                              color: Colors.blueGrey,
                            )),
                          ),
                        ]),
                  ),
                  fallback: (context) => Center(
                    child: CircularProgressIndicator(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

//list
// ConditionalBuilder(
//               condition: state is! AppGetArticlesBusinessLoadingState,
//               builder: (context) => buildCategoryList(context, list: list),
//               fallback: (context) => Center(
//                   child: CircularProgressIndicator(
//                 color: Colors.blueGrey,
//               )),
//             );
