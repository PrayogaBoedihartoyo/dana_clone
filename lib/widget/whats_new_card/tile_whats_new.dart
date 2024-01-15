import 'package:flutter/material.dart';

import '../../utils/asset_locations.dart';
import '../gap.dart';

class TileWhatsNew extends StatelessWidget {
  const TileWhatsNew({
    super.key,
    required this.iconLocation,
    required this.headline,
    required this.bodyText,
  });

  final String iconLocation;
  final String headline;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 20, bottom: 25),
      child: Row(
        children: [
          Image(
            image: AssetLocations.iconLocation(iconLocation),
            width: 32,
          ),
          const Gap(h: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: textTheme.headlineSmall,
              ),
              Text(
                bodyText,
                style: textTheme.bodyLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
