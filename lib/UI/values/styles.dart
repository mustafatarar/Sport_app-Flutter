import 'package:cricket_score/UI/values/values.dart';
import 'package:flutter/material.dart';

class Styles {
  static final appTheme = _baseTheme.copyWith(
    iconTheme: IconThemeData(
      color: _baseTheme.colorScheme.onBackground,
      size: Dimens.iconSizeS,
    ),
    textTheme: _baseTextTheme,
    accentTextTheme: _accentTextTheme,
    cardTheme: _baseTheme.cardTheme.copyWith(
      margin: EdgeInsets.zero,
    ),
  );

  static final secondaryTextTheme = _baseTextTheme.apply(
    displayColor: MyColors.gray300,
    bodyColor: MyColors.gray300,
  );

  static final onSecondaryTextTheme = _baseTextTheme.apply(
    displayColor: _colorScheme.onSecondary,
    bodyColor: _colorScheme.onSecondary,
  );

  static const _colorScheme = ColorScheme.light(
    primary: MyColors.white,
    primaryVariant: MyColors.gray,
    secondary: MyColors.yellow400,
    secondaryVariant: MyColors.yellow400,
    onPrimary: MyColors.gray900,
    onSecondary: Colors.white,
    onBackground: MyColors.gray900,
  );

  static final _baseTheme = ThemeData.from(
    colorScheme: _colorScheme,
    textTheme: Typography.material2018().black.apply(
          fontFamily: MyFonts.roboto,
          displayColor: _colorScheme.onBackground,
          bodyColor: _colorScheme.onBackground,
        ),
  );

  static final _baseTextTheme = _baseTheme.textTheme.copyWith(
    headline1: _baseTheme.textTheme.headline1.copyWith(
      fontSize: 28,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    headline2: _baseTheme.textTheme.headline2.copyWith(
      fontSize: 22,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    headline3: _baseTheme.textTheme.headline3.copyWith(
      fontSize: 20,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    headline4: _baseTheme.textTheme.headline4.copyWith(
      fontSize: 18,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    headline5: _baseTheme.textTheme.headline5.copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    headline6: _baseTheme.textTheme.headline6.copyWith(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    bodyText1: _baseTheme.textTheme.bodyText1.copyWith(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
    ),
    bodyText2: _baseTheme.textTheme.bodyText2.copyWith(
      fontSize: 14,
      height: 1.5,
    ),
    subtitle1: _baseTheme.textTheme.subtitle1.copyWith(
      fontSize: 12,
      height: 1.5,
    ),
    subtitle2: _baseTheme.textTheme.subtitle2.copyWith(
      fontSize: 10,
      height: 1.5,
    ),
    caption: _baseTheme.textTheme.caption.copyWith(
      fontSize: 10,
      height: 1.5,
    ),
    overline: _baseTheme.textTheme.overline.copyWith(
      fontSize: 8,
      height: 1.5,
    ),
  );

  static final _accentTextTheme = _baseTextTheme.apply(
    displayColor: _colorScheme.secondary,
    bodyColor: _colorScheme.secondary,
  );

  Styles._();
}
