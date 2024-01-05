import 'package:flutter/material.dart';

import 'icon_subtitle_header.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconSubtitleHeader(
            iconName: 'scan',
            iconSubtitle: 'Scan',
          ),
          IconSubtitleHeader(
            iconName: 'top_up',
            iconSubtitle: 'Top Up',
          ),
          IconSubtitleHeader(
            iconName: 'send',
            iconSubtitle: 'Send',
          ),
          IconSubtitleHeader(
            iconName: 'request',
            iconSubtitle: 'Request',
          ),
        ],
      ),
    );
  }
}