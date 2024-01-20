import 'package:flutter/material.dart';

import '../../utils/asset_locations.dart';
import '../../utils/dana_clone_theme.dart';
import '../gap.dart';

class IconBottomNavBar extends StatelessWidget {
  const IconBottomNavBar({
    super.key,
    required this.iconName,
    required this.label,
    required this.iconSize,
    required this.onTap,
  });

  final String iconName;
  final String label;
  final double iconSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.grey,
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetLocations.iconLocation(iconName),
              width: iconSize,
            ),
            const Gap(v: 5),
            Text(
              label,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: DanaCloneTheme.grey,
                    letterSpacing: -0.2,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
