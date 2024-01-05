import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/utils.dart';
import '../widget/appbar/app_bar_title_widget.dart';
import '../widget/gap.dart';
import '../widget/header/header_widget.dart';

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
          ]
      ),
      body: ListView(
        children: [
          Container(
            color: DanaCloneTheme.whiteBg,
            height: 410,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  color: DanaCloneTheme.mainBlue,
                ),
                const HeaderWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}

