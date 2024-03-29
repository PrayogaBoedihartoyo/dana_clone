import 'package:flutter/cupertino.dart';

class Gap extends StatelessWidget {
  const Gap({
    super.key,
    this.v = 10,
    this.h = 10,
  });

  final double v;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: h,
      height: v,
    );
  }
}
