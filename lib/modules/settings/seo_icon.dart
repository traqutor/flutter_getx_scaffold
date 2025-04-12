import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeoIcon extends StatelessWidget {
  final String icon;
  final double size;
  final Color color;

  const SeoIcon({
    super.key,
    required this.icon,
    required this.color,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/$icon.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: size,
    );
  }
}