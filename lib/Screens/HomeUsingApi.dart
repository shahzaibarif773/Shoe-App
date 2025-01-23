// import 'dart:convert';

// import 'package:api_practise1/Screens/Details.dart';
// import 'package:api_practise1/Services/BuildImage.dart';
// import 'package:api_practise1/Theme/Colors.dart';
// import 'package:carousel_slider/carousel_controller.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:http/http.dart' as http;

// import '../Model/ProductModel.dart';
// import '../main.dart';

// final List<String> imgList = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
// ];

// class HomeUsingApi extends StatefulWidget {
//   const HomeUsingApi({super.key});

//   @override
//   State<HomeUsingApi> createState() => _HomeUsingApiState();
// }

// class _HomeUsingApiState extends State<HomeUsingApi> {
//   int _current = 0;
//   String variable = 'Product';
//   final CarouselSliderController _controller = CarouselSliderController();

//   List<String> imgList = []; // Dynamic image list

//   Future<void> getProductApi() async {
//     try {
//       final response =
//       await http.get(Uri.parse('https://fakestoreapi.com/products'));
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body) as List;
//         setState(() {
//           imgList = data.map((item) => item['image'] as String).toList();
//         });
//       } else {
//         throw Exception('Failed to load products');
//       }
//     } catch (e) {
//       debugPrint('Error fetching API data: $e');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getProductApi(); // Fetch data on widget initialization
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> imageSliders = imgList
//         .map((item) => InkWell(
//       onTap: () {
//         // Get.to(Details(
//         //   description: variable,
//         // ));
//       },
//       child: Container(
//         margin: const EdgeInsets.all(5.0),
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(5.0)),
//           child: Stack(
//             children: <Widget>[
//               BuildImage(img: item,),
//               // Image.network(item, fit: BoxFit.cover, width: 1000.0),
//               Positioned(
//                 bottom: 0.0,
//                 left: 0.0,
//                 right: 0.0,
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [
//                         Color.fromARGB(200, 0, 0, 0),
//                         Color.fromARGB(0, 0, 0, 0)
//                       ],
//                       begin: Alignment.bottomCenter,
//                       end: Alignment.topCenter,
//                     ),
//                   ),
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 10.0, horizontal: 20.0),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ))
//         .toList();

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           IconButton(
//             onPressed: () {
//               themeMode.value = themeMode.value == 1 ? 2 : 1;
//             },
//             icon: Icon(Theme.of(context).brightness == Brightness.light
//                 ? Icons.nightlight
//                 : Icons.sunny),
//           ),
//           SizedBox(
//             width: 2.h,
//           ),
//         ],
//       ),
//       body: imgList.isEmpty
//           ? const Center(
//           child: CircularProgressIndicator()) // Show loading while fetching
//           : Column(
//         children: [
//           SizedBox(
//             height: 20.h,
//           ),
//           CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//               autoPlay: false,
//               enlargeCenterPage: true,
//               aspectRatio: 2.0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _current = index;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
