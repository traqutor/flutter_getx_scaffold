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

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00183d),
      surfaceTint: Color(0xff3e5e99),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff002c65),
      onPrimaryContainer: Color(0xff9dbbfd),
      secondary: Color(0xff2b364d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff626d86),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2d0340),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff441c56),
      onTertiaryContainer: Color(0xffdba9ed),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf9fe),
      onSurface: Color(0xff101115),
      onSurfaceVariant: Color(0xff33363f),
      outline: Color(0xff4f525c),
      outlineVariant: Color(0xff6a6d77),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffadc6ff),
      primaryFixed: Color(0xff4e6ca8),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff34548e),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff626d86),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4a556d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff885c9a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6e4480),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6c6cb),
      surfaceBright: Color(0xfffaf9fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f3f8),
      surfaceContainer: Color(0xffe8e7ed),
      surfaceContainerHigh: Color(0xffdddce2),
      surfaceContainerHighest: Color(0xffd2d1d6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00183d),
      surfaceTint: Color(0xff3e5e99),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff002c65),
      onPrimaryContainer: Color(0xffe1e8ff),
      secondary: Color(0xff212c42),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3e4961),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2d0340),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff441c56),
      onTertiaryContainer: Color(0xfffae0ff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffaf9fe),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff292c35),
      outlineVariant: Color(0xff464952),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3035),
      inversePrimary: Color(0xffadc6ff),
      primaryFixed: Color(0xff274882),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff08316a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3e4961),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff283349),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff623873),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff49215b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb9b8be),
      surfaceBright: Color(0xfffaf9fe),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f0f6),
      surfaceContainer: Color(0xffe3e2e7),
      surfaceContainerHigh: Color(0xffd4d4d9),
      surfaceContainerHighest: Color(0xffc6c6cb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
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

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffcfdcff),
      surfaceTint: Color(0xffadc6ff),
      onPrimary: Color(0xff002455),
      primaryContainer: Color(0xff7290cf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd1dcfa),
      onSecondary: Color(0xff1b253b),
      secondaryContainer: Color(0xff8691ac),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff5d0ff),
      onTertiary: Color(0xff3b124d),
      tertiaryContainer: Color(0xffae7fc0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff121317),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffdadce7),
      outline: Color(0xffafb1bc),
      outlineVariant: Color(0xff8d909a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e7),
      inversePrimary: Color(0xff264780),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff00102d),
      primaryFixedDim: Color(0xffadc6ff),
      onPrimaryFixedVariant: Color(0xff0e346d),
      secondaryFixed: Color(0xffd8e2ff),
      onSecondaryFixed: Color(0xff051126),
      secondaryFixedDim: Color(0xffbbc6e3),
      onSecondaryFixedVariant: Color(0xff2b364d),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff220032),
      tertiaryFixedDim: Color(0xffe7b4f9),
      onTertiaryFixedVariant: Color(0xff4d255f),
      surfaceDim: Color(0xff121317),
      surfaceBright: Color(0xff434449),
      surfaceContainerLowest: Color(0xff06070b),
      surfaceContainerLow: Color(0xff1c1d22),
      surfaceContainer: Color(0xff26282c),
      surfaceContainerHigh: Color(0xff313237),
      surfaceContainerHighest: Color(0xff3c3d42),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffecefff),
      surfaceTint: Color(0xffadc6ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa7c2ff),
      onPrimaryContainer: Color(0xff000a22),
      secondary: Color(0xffecefff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8c2df),
      onSecondaryContainer: Color(0xff010b20),
      tertiary: Color(0xfffdeaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe3b1f5),
      onTertiaryContainer: Color(0xff190026),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff121317),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffeeeffb),
      outlineVariant: Color(0xffc0c2cd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e2e7),
      inversePrimary: Color(0xff264780),
      primaryFixed: Color(0xffd8e2ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffadc6ff),
      onPrimaryFixedVariant: Color(0xff00102d),
      secondaryFixed: Color(0xffd8e2ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbbc6e3),
      onSecondaryFixedVariant: Color(0xff051126),
      tertiaryFixed: Color(0xfff7d8ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffe7b4f9),
      onTertiaryFixedVariant: Color(0xff220032),
      surfaceDim: Color(0xff121317),
      surfaceBright: Color(0xff4f5054),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1e1f24),
      surfaceContainer: Color(0xff2f3035),
      surfaceContainerHigh: Color(0xff3a3b40),
      surfaceContainerHighest: Color(0xff46464b),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
