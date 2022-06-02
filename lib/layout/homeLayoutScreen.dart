// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/modules/popSettings/aboutus/aboutus.dart';
import 'package:mynews/modules/popSettings/settingScreen/settingscreen.dart';
import 'package:mynews/shared/components/components.dart';
import 'package:mynews/shared/cubit/cubit.dart';
import 'package:mynews/shared/cubit/states.dart';
import 'package:mynews/shared/cubit/themecubit.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../main.dart';

class HomeLayoutScreen extends StatelessWidget {
  String dark = "xcds";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          String? mode = ThemeCubit.get(context).mode;
          return Scaffold(
            // endDrawer: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            appBar: AppBar(
              title: Text("Fayoum News"),
              actions: [
                PopupMenuButton(
                    color: Theme.of(context).indicatorColor,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Row(children: [
                              Icon(
                                (ThemeCubit.get(context).isDark)
                                    ? Icons.wb_sunny_outlined
                                    : Icons.dark_mode_outlined,
                                color: (ThemeCubit.get(context).isDark)
                                    ? Colors.white
                                    : Colors.black45,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                (ThemeCubit.get(context).isDark)
                                    ? "Light Mode"
                                    : "Dark Mode",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight),
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
                              Text(
                                'Settings',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight),
                              ),
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
                              Text(
                                'About Us',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorLight),
                              ),
                            ]),
                            value: MenuValues.aboutus,
                          ),
                        ],
                    onSelected: (value) {
                      switch (value) {
                        case MenuValues.mode:
                          ThemeCubit.get(context).themeChange();
                          break;
                        case MenuValues.settings:
                          navigateTo(context, settingScreen());
                          break;
                        case MenuValues.aboutus:
                          navigateTo(context, aboutUsScreen());
                          break;
                      }
                    }),
              ],
            ),
            bottomNavigationBar: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: false,
              child: Expanded(
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
            ),

            body: cubit.screens[cubit.bottomNavIndex],
          );
        });
  }
}
