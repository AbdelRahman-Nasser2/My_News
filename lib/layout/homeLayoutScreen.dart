// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/modules/popSettings/aboutus/aboutus.dart';
import 'package:mynews/modules/popSettings/settingScreen/settingscreen.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';
import 'package:mynews/shared/cubit/themecubit.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../main.dart';

class HomeLayoutScreen extends StatelessWidget {
  late String dak;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()
      // ..getDataBusiness()
      // ..getDataScience()
      // ..getDataSports(),
      ,
      child: BlocConsumer<AppCubit, AppStates>(
          listener: (BuildContext context, AppStates state) {},
          builder: (BuildContext context, AppStates state) {
            AppCubit cubit = AppCubit.get(context);
            return Scaffold(
              endDrawer: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              bottomNavigationBar: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                child: SalomonBottomBar(
                  items: [
                    /// menu
                    SalomonBottomBarItem(
                      icon: Icon(Icons.menu_outlined),
                      title: Text("Category"),
                      selectedColor: Colors.blueGrey,
                    ),

                    /// Search
                    SalomonBottomBarItem(
                      icon: Icon(Icons.search),
                      title: Text("Search"),
                      selectedColor: Colors.orange,
                    ),

                    /// Home
                    SalomonBottomBarItem(
                      icon: Icon(Icons.home),
                      title: Text("Home"),
                      selectedColor: Colors.purple,
                    ),

                    /// Notification
                    SalomonBottomBarItem(
                      icon: Icon(Icons.notifications_none_outlined),
                      title: Text("Notification"),
                      selectedColor: Colors.redAccent,
                    ),

                    /// Profile
                    SalomonBottomBarItem(
                      icon: Icon(Icons.person_outline),
                      title: Text("Profile"),
                      selectedColor: Colors.teal,
                    ),
                  ],
                  currentIndex: cubit.bottomNavIndex,
                  onTap: (index) {
                    cubit.bottomNav(index);
                  },
                  curve: Curves.bounceIn,
                ),
              ),
              appBar: AppBar(
                title: Text("Fayoum News"),
                actions: [
                  PopupMenuButton(
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              child: Row(children: [
                                Icon(
                                  Icons.dark_mode_outlined,
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Dark Mode"),
                                ),
                              ]),
                              value: MenuValues.mode,
                            ),
                            PopupMenuItem(
                              child: Row(children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Settings'),
                              ]),
                              value: MenuValues.settings,
                            ),
                            PopupMenuItem(
                              child: Row(children: [
                                Icon(
                                  Icons.roundabout_left_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('About Us'),
                              ]),
                              value: MenuValues.aboutus,
                            ),
                          ],
                      onSelected: (value) {
                        switch (value) {
                          case MenuValues.settings:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => settingScreen()),
                            );
                            break;
                          case MenuValues.mode:
                            ThemeCubit.get(context).themeChange();
                            break;
                          case MenuValues.aboutus:
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => aboutUsScreen()));
                            break;
                        }
                      }),
                ],
              ),
              body: cubit.screens[cubit.bottomNavIndex],
            );
          }),
    );
  }
}
