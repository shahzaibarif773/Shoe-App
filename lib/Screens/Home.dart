import 'package:api_practise1/Screens/Details.dart';
import 'package:api_practise1/Screens/Login.dart';
import 'package:api_practise1/Services/BuildImage.dart';
import 'package:api_practise1/Theme/Colors.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';

final List<String> imgList = [
  'https://fila.co.in/media/catalog/product/cache/274c04d22a7b28db321c499b6be61cc2/1/1/11010846_1.jpg',
  'https://m.media-amazon.com/images/I/81GjTmAiwhL._AC_SR920,736_.jpg',
  'https://m.media-amazon.com/images/I/81ehgx4lDZL._AC_SR920,736_.jpg',
  'https://m.media-amazon.com/images/I/614aiM56siL._SL1500_.jpg',
  'https://fila.co.in/media/catalog/product/cache/274c04d22a7b28db321c499b6be61cc2/1/1/11010215_1.jpg',
  'https://www.fkick.pk/cdn/shop/files/z.jpg?v=1691307727',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTD-Y47xCqrcf3mPX3JgtJ3T91Ebt7v-iSyFQ&s',
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => InkWell(
              onTap: () {
                Get.to(Details(img: item,));
              },
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: BuildImage(img: item)),
              ),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              themeMode.value = themeMode.value == 1 ? 2 : 1;
            },
            icon: Icon(Theme.of(context).brightness == Brightness.light
                ? Icons.nightlight
                : Icons.sunny),
          ),
          SizedBox(
            width: 2.h,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          SizedBox(
            height: AppHeight().small,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? AppColors().white
                              : AppColors().black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 35.h,),
          ElevatedButton(onPressed: (){
            Get.offAll(Login());
          }, child: Icon(Icons.power_settings_new_rounded,color: AppColors().orange,)),

        ],
          )
    );
  }
}
