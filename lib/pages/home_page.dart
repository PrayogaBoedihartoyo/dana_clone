import 'package:dana_clone/widget/dana_protection_card/data_protection_card_widget.dart';
import 'package:dana_clone/widget/more_for_you/more_for_you_card_widget.dart';
import 'package:dana_clone/widget/nearby_card/nearby_card_widget.dart';
import 'package:dana_clone/widget/service_card/service_card_widget.dart';
import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/feed_card/feed_card_widget.dart';
import '../widget/header/header_widget.dart';
import '../widget/image_loop_slider/image_loop_slider.dart';
import '../widget/whats_new_card/whats_new_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderWidget(),
                  ServiceCardWidget(),
                ],
              )
            ],
          ),
        ),
        const FeedCardWidget(),
        const ImageLoopSliderWidget(),
        const WhatsNewCardWidget(),
        const NearbyCardWidget(),
        const MoreForYouCardWidget(),
        const DataProtectionCardWidget()
      ],
    );
  }
}
