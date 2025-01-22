import 'package:api_practise1/Services/BuildImage.dart';
import 'package:api_practise1/Widget/ColorSelector.dart';
import 'package:api_practise1/Widget/TextAnimation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

import '../Theme/Colors.dart';

class Details extends StatelessWidget {
  final String? img;
  const Details({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    List<Color> colorList = [
      Colors.black,
      Colors.purple,
      Colors.red,
      Colors.teal,
      Colors.deepOrangeAccent,
      Colors.white,
      Colors.yellow,
    ];
    List desription = [
      'These New Balance Fresh Foam X M1540BK4 Black/White',
      'Mesh Men\'s Shoes have the following features:',
      '⚈ Engineered knit upper provides comfort and flexibility',
      '⚈ Lace closure delivers a secure fit',
      '⚈ Fresh Foam X with Bio EVA adds eco-friendly cushioning to every step',
      '⚈ ROLLBAR Technology offers rear foot movement control',
      '⚈ Lightweight solid rubber outsole provides reliable traction',
      '⚈ Lightweight solid rubber outsole provides reliable traction',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 38.h),
                    Container(
                      height: 62.h,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3.h),
                            Align(
                              alignment: Alignment.center,
                              child: TextAnimation(
                                text: 'NEW BALANCE M1540GR4 MEN\'S',
                                fontsize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Align(
                              alignment: Alignment.center,
                              child: TextAnimation(
                                text: '\$190',
                                fontsize: 17.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            TextAnimation(
                              text: 'Free shipping on purchases over \$100',
                              fontWeight: FontWeight.w800,
                              fontsize: 15.sp,
                              color: Colors.black,
                            ),
                            SizedBox(height: 2.h),
                            TextAnimation(
                              text: 'Select Color:',
                              fontsize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            SizedBox(height: 2.h),
                            WidgetAnimator(
                              incomingEffect: WidgetTransitionEffects
                                  .incomingSlideInFromBottom(
                                duration: Duration(milliseconds: 1100),
                                delay: Durations.medium2,
                              ),
                              child: ColorSelector(
                                colors: colorList,
                                defaultSelectedIndex: 2,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            ...List.generate(desription.length, (index) {
                              return TextAnimation(
                                text: desription[index],
                                fontsize: 15.5.sp,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              );
                            }),
                            SizedBox(height: 6.h),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 5.h,
                                  width: AppWidth().Large + 8.h,
                                  decoration: BoxDecoration(
                                    color: AppColors().orange,
                                    borderRadius: BorderRadius.circular(18.sp),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Add To Cart',
                                    style: TextStyle(
                                        color: AppColors().white, fontSize: 16),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40.h,
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22.sp),
                      bottomRight: Radius.circular(22.sp),
                    ),
                  ),
                  child: BuildImage(img: img ?? ''),
                ),
                Positioned(
                  left: 8.sp,
                  top: 22.sp,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 22.sp,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
