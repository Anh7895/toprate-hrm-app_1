import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../blocs/home/home_bloc.dart';
import '../../../common/resource/sizes.dart';

class ItemImageCarouselSlider extends StatelessWidget {
  final HomeBloc homeBloc;
  final BuildContext context;

  ItemImageCarouselSlider({required this.homeBloc, required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height_224,
        margin: EdgeInsets.symmetric(horizontal: width_5),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(radius_20),
        ),
        child: Column(
          children: [
            CarouselSlider.builder(
                itemCount: homeBloc.urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = homeBloc.urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      homeBloc.add(SetIndexImageSliderEvent(index: index));
                    },
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlayInterval: Duration(seconds: 2))),
            SizedBox(height: height_10,),
            AnimatedSmoothIndicator(
              activeIndex: homeBloc.activeIndex,
              count: homeBloc.urlImages.length,
              effect: ScaleEffect(
                dotWidth: 10,
                dotHeight: 10,
                activeDotColor: Colors.red,
                dotColor: Colors.black12,
              ),
            ),
          ],
        ));
  }

  Widget buildImage(String url, int index) {
    return Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ));
  }
}
