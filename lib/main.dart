import 'package:api_practise1/Routes/Routes.dart';
import 'package:api_practise1/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

final themeMode = ValueNotifier(1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return ResponsiveSizer(
          builder: (context, orientation, screentype) {
            return GetMaterialApp(
              initialRoute: '/Home',
              routes: Routes.routes,
              themeMode: ThemeMode.values.toList()[value],
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              darkTheme: ThemeData.dark(),
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  backgroundColor: themeMode.value == 1
                      ? AppColors().lightBackground
                      : AppColors().DarkBackground,
                ),
                scaffoldBackgroundColor: themeMode.value == 1
                    ? AppColors().lightBackground
                    : AppColors().DarkBackground,
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
            );
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}
