import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/utils.dart';
import '../widget/app_bar_title_widget.dart';
import '../widget/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DanaCloneTheme.whiteBg,
      appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          elevation: 0,
          titleSpacing: 0,
          title: const AppBarTitleWidget(),
          actions: [
            Image(
              image: AssetLocations.iconLocation('message'),
              width: 35,
            ),
            const Gap(h: 16),
          ]),
    );
  }
}
