import 'package:dana_clone/utils/asset_locations.dart';
import 'package:dana_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';
import '../gap.dart';
import 'horizontal_caption_and_icon.dart';

class DataProtectionCardWidget extends StatelessWidget {
  const DataProtectionCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = DanaCloneTheme.textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
        ),
      ),
      margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetLocations.iconLocation('dana_protection'),
                      width: 40,
                    ),
                    const Gap(h: 5),
                    Text(
                      'DANA\nPROTECTION',
                      style: textTheme.displaySmall,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("DISCOVER"),
                ),
              ],
            ),
            const Gap(v: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalCaptionAndIcon(
                  iconName: 'money_back',
                  caption: 'Money Back',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'secure_data',
                  caption: 'Secure Data\n Privacy',
                ),
                HorizontalCaptionAndIcon(
                  iconName: 'live_assistance',
                  caption: '24/7\nAssistance',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
