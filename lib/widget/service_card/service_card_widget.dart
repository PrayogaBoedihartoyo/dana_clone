import 'package:dana_clone/utils/asset_locations.dart';
import 'package:dana_clone/widget/gap.dart';
import 'package:dana_clone/widget/service_card/service_card_icon.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({Key? key}) : super(key: key);

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
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 35, 16, 20),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('coupon'),
                  width: 40,
                ),
                const SizedBox(width: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dana Deals', style: primaryTextTheme.headline4),
                    Text('Jajan Hemat s/d 43%', style: textTheme.subtitle1),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Serbu', style: primaryTextTheme.button)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, right: 22, bottom: 22),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(iconName: 'electricity', iconTitle: 'Electricity'),
                    ServiceCardIcon(iconName: 'rewards', iconTitle: 'Voucher A+ Rewards'),
                    ServiceCardIcon(iconName: 'emas', iconTitle: 'eMAS'),
                    ServiceCardIcon(iconName: 'goals', iconTitle: 'DANA Goals'),
                  ],
                ),
                Gap(v: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(iconName: 'item_digital', iconTitle: 'Item Digital', iconSize: 25),
                    ServiceCardIcon(iconName: 'pulsa', iconTitle: 'Pulsa &\n Data', iconSize: 25),
                    ServiceCardIcon(iconName: 'dana_kaget', iconTitle: 'DANA Kaget', iconSize: 25),
                    ServiceCardIcon(iconName: 'view_all', iconTitle: 'View All', iconSize: 35),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
