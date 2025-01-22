import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class BuildImage extends StatelessWidget {
  final String img;
  const BuildImage({
    super.key, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      width: double.maxFinite,
      fit: BoxFit.fitWidth,

    );
  }
}