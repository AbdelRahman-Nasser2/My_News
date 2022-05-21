// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mynews/layout/homeLayoutScreen.dart';
import 'package:mynews/shared/cubit/themecubit.dart';
import 'package:mynews/shared/cubit/themestates.dart';
import 'package:mynews/shared/network/local/sharedpreference/sharedpreference.dart';
import 'package:mynews/shared/network/remote/dio_Helper/dio_Helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();

  bool? isDark = CacheHelper.getBoolean(key: 'isDark');
  runApp(MyApp());
}

enum MenuValues {
  mode,
  settings,
  aboutus,
}

class MyApp extends StatelessWidget {
  // final bool isDark;

  MyApp();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ThemeCubit()..themeChange(),
      child: BlocConsumer<ThemeCubit, ThemeStates>(
          listener: (BuildContext context, ThemeStates state) {},
          builder: (BuildContext context, ThemeStates state) {
            return MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                    actionsIconTheme: IconThemeData(color: Colors.black),
                    titleTextStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    backgroundColor: Colors.white,
                    // backwardsCompatibility: false,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        systemNavigationBarColor: Colors.black,
                        statusBarColor: Colors.white,
                        statusBarIconBrightness: Brightness.dark,
                        statusBarBrightness: Brightness.dark),
                    elevation: 0.0),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: Colors.white,
                ),
                textTheme: TextTheme(
                  displayMedium: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  displaySmall: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                  //description
                  displayLarge: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              darkTheme: ThemeData(
                backgroundColor: HexColor("333739"),
                scaffoldBackgroundColor: HexColor("333739"),
                appBarTheme: AppBarTheme(
                    actionsIconTheme: IconThemeData(color: Colors.white),
                    titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    backgroundColor: HexColor("333739"),
                    // backwardsCompatibility: false,
                    systemOverlayStyle: SystemUiOverlayStyle(
                        systemNavigationBarColor: Colors.white,
                        statusBarColor: HexColor("333739"),
                        statusBarIconBrightness: Brightness.light,
                        statusBarBrightness: Brightness.light),
                    elevation: 0.0),
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  backgroundColor: HexColor("333739").withOpacity(1),
                ),
                textTheme: TextTheme(
                  displayMedium: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  displaySmall: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                  //description
                  displayLarge: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              themeMode: ThemeCubit.get(context).isDark
                  ? ThemeMode.dark
                  : ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: HomeLayoutScreen(),
            );
          }),
    );
  }
}
