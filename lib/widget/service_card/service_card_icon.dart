import 'package:flutter/material.dart';

import '../../utils/asset_locations.dart';
import '../gap.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    super.key,
    required this.iconName,
    required this.iconTitle,
    this.iconSize = 40,
  });

  final String iconName;
  final String iconTitle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: iconSize,
        ),
        const Gap(v: 12),
        Text(
          iconTitle,
          style: textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}