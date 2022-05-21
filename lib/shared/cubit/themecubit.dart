// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/shared/cubit/themestates.dart';
import 'package:mynews/shared/network/local/sharedpreference/sharedpreference.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(ThemeInitialState());

  static ThemeCubit get(context) => BlocProvider.of(context);

  //Theme Mode
  bool isDark = true;

  void themeChange({bool? fromShared, String? dark}) {
    if (fromShared != null) {
      isDark = fromShared;
      dark = "Light Mode";
      emit(ChangeThemeState());
    } else {
      isDark = !isDark;
      dark = "Dark Mode";
      CacheHelper.putBoolean(key: dark, value: isDark).then((value) {
        emit(ChangeThemeState());
      });
    }
  }
}
