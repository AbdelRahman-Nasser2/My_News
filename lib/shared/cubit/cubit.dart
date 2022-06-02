// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/layout/category/category.dart';
import 'package:mynews/modules/homelayoutscreens/home/homeScreen.dart';
import 'package:mynews/modules/homelayoutscreens/notification/notification.dart';
import 'package:mynews/modules/homelayoutscreens/profile/profile.dart';
import 'package:mynews/modules/homelayoutscreens/search/search.dart';
import 'package:mynews/shared/cubit/states.dart';
import 'package:mynews/shared/network/remote/dio_Helper/dio_Helper.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  // bool aa = ThemeCubit.get(context).isDark;

//part of AnimatedBottomNavigationBar

  var bottomNavIndex = 2;
  final controller = ScrollController();

  late Animation<double> animation;

  late CurvedAnimation curve;
  var navigation = GlobalKey();

  final iconList = <IconData>[
    Icons.menu_outlined,
    Icons.search_rounded,
    Icons.notifications,
    Icons.person_outline,
  ];

  List screens = <Widget>[
    CategoryScreen(),
    searchScreen(),
    homeScreen(),
    notificationScreen(),
    profileScreen(),
  ];

  void bottomNav(int index) {
    bottomNavIndex = index;
    emit(AppBottomNavBarState());
  }

  Color? fav;
  void iconChange() {
    fav = Colors.red;
    emit(ChangeFavState());
  }

  //Theme Mode
  bool isDark = true;
  // void themeChange() {
  //   isDark = !isDark;
  //   emit(AppChangeThemeState());
  // }
  void themeChange({String? mode}) {}

//  Parts of APIs
  List<dynamic> total = [];

  // part Sports
  List<dynamic> sports = [];

  void getDataSports() {
    emit(AppGetArticlesSportsLoadingState());
    if (sports.isEmpty) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'Sports',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
      }).then((value) {
        // print(value.data["articles"][0]["title"]);
        sports = value.data["articles"];
        total = value.data["articles"];
        // print(articles[1]["title"]);
        emit(AppGetArticlesSportsState());
      }).catchError((error) {
        print(error.toString());
        emit(AppGetArticlesSportsErrorState(error));
      });
    } else {
      emit(AppGetArticlesSportsState());
    }
  }

  // part Business
  List<dynamic> business = [];
  //https://newsapi.org/v2/top-headlines?country=eg&category=science&apiKey=65f7f556ec76449fa7dc7c0069f040ca
  void getDataBusiness() {
    emit(AppGetArticlesBusinessLoadingState());
    if (business.isEmpty) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'Business',
        'apiKey': 'ee564a6a28654d1f967de3e14d78921f',
      }).then((value) {
        // print(value.data["articles"][0]["title"]);
        business = value.data["articles"];
        total = value.data["articles"];

        // print(articles[1]["title"]);
        emit(AppGetArticlesBusinessState());
      }).catchError((error) {
        print(error.toString());
        emit(AppGetArticlesBusinessErrorState(error));
      });
    } else {
      emit(AppGetArticlesBusinessState());
    }
  }

  // part Science
  List<dynamic> science = [];

  void getDataScience() {
    emit(AppGetArticlesScienceLoadingState());
    if (science.isEmpty) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'eg',
        'category': 'Science',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
      }).then((value) {
        // print(value.data["articles"][0]["title"]);
        science = value.data["articles"];
        // print(articles[1]["title"]);
        emit(AppGetArticlesScienceState());
      }).catchError((error) {
        print(error.toString());
        emit(AppGetArticlesScienceErrorState(error));
      });
    } else {
      emit(AppGetArticlesScienceState());
    }
  }

  //part Search
  List<dynamic> search = [];
  void getDataSearch(String value) {
    emit(AppGetSearchLoadingState());
    // search = [];
    DioHelper.getData(url: 'v2/everything', query: {
      'q': '$value',
      'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
    }).then((value) {
      print(value.data["articles"][0]["title"]);
      search = value.data["articles"];
      // total = articles;
      // print(articles[1]["title"]);
      emit(AppGetSearchState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetArticlesErrorState(error));
    });
  }

  List<dynamic> articles = [];
  void getData() {
    emit(AppGetArticlesLoadingState());
    // sources=techcrunch&apiKey=ee564a6a28654d1f967de3e14d78921f
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'sources': 'techcrunch',
      'apiKey': 'ee564a6a28654d1f967de3e14d78921f',
    }).then((value) {
      print(value.data["articles"][0]["title"]);
      articles = value.data["articles"];
      total = value.data["articles"];
      // print(articles[1]["title"]);
      emit(AppGetArticlesState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetArticlesErrorState(error));
    });
  }

  //Part US Business
  List<dynamic> usBusiness = [];

  //https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ee564a6a28654d1f967de3e14d78921f
  void getDataUSBusiness() {
    emit(AppGetArticlesUSBusinessLoadingState());
    if (usBusiness.isEmpty) {
      DioHelper.getData(url: 'v2/top-headlines', query: {
        'country': 'us',
        'category': 'business',
        'apiKey': 'ee564a6a28654d1f967de3e14d78921f',
      }).then((value) {
        // print(value.data["articles"][0]["title"]);
        usBusiness = value.data["articles"];
        // total = business;

        // print(articles[1]["title"]);
        emit(AppGetArticlesUSBusinessState());
      }).catchError((error) {
        print(error.toString());
        emit(AppGetArticlesUSBusinessErrorState(error));
      });
    } else {
      emit(AppGetArticlesUSBusinessState());
    }
  }
}
