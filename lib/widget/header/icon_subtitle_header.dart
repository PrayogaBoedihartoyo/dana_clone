import 'package:flutter/material.dart';

import '../../utils/asset_locations.dart';

class IconSubtitleHeader extends StatelessWidget {
  const IconSubtitleHeader({
    super.key,
    required this.iconName,
    required this.iconSubtitle,
  });

  final String iconName;
  final String iconSubtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: 40,
        ),
        const SizedBox(height: 5),
        Text(
          iconSubtitle,
          style: Theme.of(context).primaryTextTheme.titleMedium,
        ),
      ],
    );
  }
}