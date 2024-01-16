import 'package:dana_clone/utils/asset_locations.dart';
import 'package:flutter/material.dart';

import '../../utils/dana_clone_theme.dart';
import '../gap.dart';

class MoreForYouCardWidget extends StatelessWidget {
  const MoreForYouCardWidget({Key? key}) : super(key: key);

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'More for you',
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'Want more good stuff? Take a look!',
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('VIEW ALL'),
                )
              ],
            ),
            const Gap(v: 16),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetLocations.imageLocation('promo_voucher'),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 110,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Promo Voucher',
                          style: textTheme.displayMedium),
                      const Gap(v: 8),
                      Text(
                        'Choose and claim the most\nwanted DANA vouchers',
                        style: primaryTextTheme.titleSmall!.copyWith(
                            color: DanaCloneTheme.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.2),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: 10,
                  bottom: 0,
                  top: 0,
                  child: CircleAvatar(
                    backgroundColor: DanaCloneTheme.thirdBlue,
                    radius: 20,
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: DanaCloneTheme.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
