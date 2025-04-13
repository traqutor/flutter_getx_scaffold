import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00183d),
      surfaceTint: Color(0xff3e5e99),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff002c65),
      onPrimaryContainer: Color(0xff7795d4),
      secondary: Color(0xff545e77),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd5dffd),
      onSecondaryContainer: Color(0xff58627c),
      tertiary: Color(0xff2d0340),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff441c56),
      onTertiaryContainer: Color(0xffb384c5),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffaf9fe),
      onSurface: Color(0xff1a1b1f),
      onSurfaceVariant: Color(0xff434750),
      outline: Color(0xff747781),
      outlineVariant: Color(0xffc4c6d1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffadc6ff),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a41),
      primaryFixedDim: Color(0xffadc6ff),
      onPrimaryFixedVariant: Color(0xff24467f),
      secondaryFixed: Color(0xffd8e2ff),
      onSecondaryFixed: Color(0xff101b31),
      secondaryFixedDim: Color(0xffbbc6e3),
      onSecondaryFixedVariant: Color(0xff3c475e),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff2f0542),
      tertiaryFixedDim: Color(0xffe7b4f9),
      onTertiaryFixedVariant: Color(0xff5f3671),
      surfaceDim: Color(0xffdad9df),
      surfaceBright: Color(0xfffaf9fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3f8),
      surfaceContainer: Color(0xffeeedf3),
      surfaceContainerHigh: Color(0xffe8e7ed),
      surfaceContainerHighest: Color(0xffe3e2e7),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffadc6ff),
      surfaceTint: Color(0xffadc6ff),
      onPrimary: Color(0xff042e67),
      primaryContainer: Color(0xff002c65),
      onPrimaryContainer: Color(0xff7795d4),
      secondary: Color(0xffbbc6e3),
      onSecondary: Color(0xff253047),
      secondaryContainer: Color(0xff3e4961),
      onSecondaryContainer: Color(0xffadb8d5),
      tertiary: Color(0xffe7b4f9),
      onTertiary: Color(0xff471f59),
      tertiaryContainer: Color(0xff441c56),
      onTertiaryContainer: Color(0xffb384c5),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff121317),
      onSurface: Color(0xffe3e2e7),
      onSurfaceVariant: Color(0xffc4c6d1),
      outline: Color(0xff8e909b),
      outlineVariant: Color(0xff434750),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e7),
      inversePrimary: Color(0xff3e5e99),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff001a41),
      primaryFixedDim: Color(0xffadc6ff),
      onPrimaryFixedVariant: Color(0xff24467f),
      secondaryFixed: Color(0xffd8e2ff),
      onSecondaryFixed: Color(0xff101b31),
      secondaryFixedDim: Color(0xffbbc6e3),
      onSecondaryFixedVariant: Color(0xff3c475e),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff2f0542),
      tertiaryFixedDim: Color(0xffe7b4f9),
      onTertiaryFixedVariant: Color(0xff5f3671),
      surfaceDim: Color(0xff121317),
      surfaceBright: Color(0xff38393d),
      surfaceContainerLowest: Color(0xff0d0e12),
      surfaceContainerLow: Color(0xff1a1b1f),
      surfaceContainer: Color(0xff1e1f24),
      surfaceContainerHigh: Color(0xff292a2e),
      surfaceContainerHighest: Color(0xff333539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

/**
    Night owl
    Background: #011627

    Foreground: #d6deeb

    Text: #5f7e97

    Selection Background: #5f7e9790

    Selection Foreground: #FFFFFF

    Buttons: #0b253a

    Second Background: #0b2942

    Disabled: #697098

    Contrast: #010e1a

    Active: #13344f

    Border: #122d42

    Highlight: #084d81

    Tree: #13344f50

    Notifications: #01111d

    Accent Color: #7e57c2

    Excluded Files Color: #0e293f

    Green Color: #addb67

    Yellow Color: #ecc48d

    Blue Color: #82aaff

    Red Color: #ff6363

    Purple Color: #c792ea

    Orange Color: #f78c6c

    Cyan Color: #7fdbca

    Gray Color: #637777

    White/Black Color: #d6deeb

    Error Color: #ef5350

    Comments Color: #637777

    Variables Color: #addb67

    Links Color: #ecc48d

    Functions Color: #82aaff

    Keywords Color: #c792ea

    Tags Color: #7fdbca

    Strings Color: #ecc48d

    Operators Color: #c792ea

    Attributes Color: #addb67

    Numbers Color: #f78c6c

    Parameters Color: #d6deeb

    Light owl
    Background: #F0F0F0

    Foreground: #403f53

    Text: #90A7B2

    Selection Background: #d3e8f8

    Selection Foreground: #403f53

    Buttons: #d9d9d9

    Second Background: #FBFBFB

    Disabled: #93A1A1

    Contrast: #f0f0f0

    Active: #d3e8f8

    Border: #d9d9d9

    Highlight: #CCCCCC

    Tree: #d3e8f87c

    Notifications: #F0F0F0

    Accent Color: #2AA298

    Excluded Files Color: #E0E7EA

    Green Color: #56b6c2

    Yellow Color: #e0af02

    Blue Color: #4876d6

    Red Color: #aa0982

    Purple Color: #994cc3

    Orange Color: #c96765

    Cyan Color: #0c969b

    Gray Color: #989fb1

    White/Black Color: #111111

    Error Color: #de3d3b

    Comments Color: #989fb1

    Variables Color: #4876d6

    Links Color: #ff869a

    Functions Color: #4876d6

    Keywords Color: #994cc3

    Tags Color: #994cc3

    Strings Color: #c96765

    Operators Color: #994cc3

    Attributes Color: #0c969b

    Numbers Color: #aa0982

    Parameters Color: #0c969b

 */
