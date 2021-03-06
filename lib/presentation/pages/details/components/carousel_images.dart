// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  CarouselImages(this.imagesListUrl);

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.35,
      child: Carousel(
        dotSize: 5,
        dotBgColor: Colors.transparent,
        autoplay: false,
        images: [
          AssetImage(
            widget.imagesListUrl[0],
          ),
          AssetImage(
            widget.imagesListUrl[1],
          ),
          AssetImage(
            widget.imagesListUrl[2],
          ),
          AssetImage(
            widget.imagesListUrl[3],
          ),
          AssetImage(
            widget.imagesListUrl[4],
          ),
          AssetImage(
            widget.imagesListUrl[5],
          ),
        ],
      ),
    );
  }
}
