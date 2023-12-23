// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_grocery/component/main_header.dart';
import 'package:my_grocery/controller/controllers.dart';
import 'package:my_grocery/view/home/components/carousel_slider/carousel_loading.dart';
import 'package:my_grocery/view/home/components/carousel_slider/carousel_slider_view.dart';
import 'package:my_grocery/view/home/components/popular_category/popular_category_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Obx(() {
            if (homeController.bannerList.isNotEmpty) {
              return CarouselSliderView(bannerList: homeController.bannerList);
            } else {
              return CarouselLoading();
            }
          }),
          Obx(() {
            if (homeController.popularCategoryList.isNotEmpty) {
              return PopularCategoryLoading();
            } else {
              return PopularCategoryLoading();
            }
          }),
        ],
      ),
    );
  }
}
