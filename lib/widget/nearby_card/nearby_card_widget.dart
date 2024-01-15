import 'package:flutter/material.dart';
import '../../utils/asset_locations.dart';
import '../../utils/dana_clone_theme.dart';
import '../gap.dart';

class NearbyCardWidget extends StatelessWidget {
  const NearbyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
          width: 0.3,
        ),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nearby',
              style: primaryTextTheme.headlineMedium,
            ),
            Text(
              'Find out what’s happening near you!',
              style: textTheme.bodyMedium,
            ),
            const Gap(),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: DanaCloneTheme.grey.withOpacity(0.5),
                  width: 0.5,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please allow location\naccess to see nearby\npromos',
                        style: textTheme.headlineMedium,
                      ),
                      const Gap(v: 15),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                          ),
                          onPressed: () {},
                          child: const Text('ALLOW'))
                    ],
                  ),
                  Image(
                    image: AssetLocations.iconLocation('nearby'),
                    width: 60,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
