import 'package:api_practise1/Theme/Colors.dart';
import 'package:api_practise1/main.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                themeMode.value = themeMode.value == 1 ? 2 : 1;
              },
              icon:
              Icon(Theme.of(context).brightness == Brightness.light? Icons.nightlight : Icons.sunny)),
          SizedBox(
            width: 2.h,
          ),
        ],
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.light
                    ? AppColors().white
                    : AppColors().black,
                borderRadius: BorderRadius.circular(18.sp),
              ),
              child: Padding(
                padding: EdgeInsets.all(18.sp),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppHeight().medium,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: FontSize().Large,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: AppHeight().medium,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: FontSize().medium,
                              fontWeight: FontWeight.w500),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Type Your Email',
                            hintStyle: TextStyle(
                              color: themeMode.value == 1
                                  ? AppColors().hintTextLight
                                  : AppColors().hintTextDark,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: AppHeight().medium,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: FontSize().medium,
                              fontWeight: FontWeight.w500),
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Type Your Password',
                            hintStyle: TextStyle(
                              color: themeMode.value == 1
                                  ? AppColors().hintTextLight
                                  : AppColors().hintTextDark,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: AppHeight().medium,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/Home');
                      },
                      child: Container(
                        height: AppHeight().Large - 8,
                        width: AppWidth().Large + 8,
                        decoration: BoxDecoration(
                          color: AppColors().orange,
                          borderRadius: BorderRadius.circular(18.sp),
                        ),
                        child: Center(
                            child: Text(
                          'Signup',
                          style: TextStyle(
                              color: AppColors().white,
                              fontSize: FontSize().small),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
