import 'package:carousel_slider/carousel_slider.dart';
import 'package:dana_clone/utils/asset_locations.dart';
import 'package:flutter/material.dart';

class ImageLoopSliderWidget extends StatefulWidget {
  const ImageLoopSliderWidget({Key? key}) : super(key: key);

  @override
  State<ImageLoopSliderWidget> createState() => _ImageLoopSliderWidgetState();
}

class _ImageLoopSliderWidgetState extends State<ImageLoopSliderWidget> {
  List<String> imageNameList = [
    'bayar_tagihan',
    'beli_voucher',
    'cobain_semua',
    'danamon',
    'emas',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageNameList.length,
      itemBuilder: (context, index, realIndex) {
        final name = imageNameList[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(top: 12, left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetLocations.imageLocation(name),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlayInterval: const Duration(seconds: 3),
        height: 162,
        viewportFraction: 0.81,
        enableInfiniteScroll: true,
        autoPlay: true,
        initialPage: 0,
      ),
    );
  }
}
