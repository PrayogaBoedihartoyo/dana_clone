import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class FriendFeedList2 extends StatelessWidget {
  const FriendFeedList2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        const TileWithAnimation(
          iconName: 'friend_2',
        ),
        const Gap(),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'Your Friend',
              style: textTheme.headline6!.copyWith(
                fontWeight: FontWeight.w600,
              ),
              children: [
                TextSpan(
                  text: ' just received Pulsa Voucher',
                  style: textTheme.headline6,
                ),
                TextSpan(
                  text: ' from',
                  style: textTheme.headline6,
                ),
                TextSpan(
                  text: ' DANA Surprize',
                  style: textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: DanaCloneTheme.orange,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
