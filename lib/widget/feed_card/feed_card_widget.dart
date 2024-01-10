import 'package:flutter/material.dart';

class FeedCardWidget extends StatelessWidget {
  const FeedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey.withOpacity(0.4),
            width: 0.3,
          ),
        ),
        margin: const EdgeInsets.only(left: 16, right: 16, top: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Feed', style: primaryTextTheme.headline4),
                      Text(
                        'Find out what your friends up to!',
                        style: textTheme.bodyText2,
                      )
                    ],
                  ),
                  OutlinedButton(onPressed: () {}, child: const Text('EXPLORE'))
                ],
              ),
            )
          ],
        ));
  }
}
