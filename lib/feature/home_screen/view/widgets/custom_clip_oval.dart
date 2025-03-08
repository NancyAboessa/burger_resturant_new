import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lllllilil/core/utils/app_images.dart';

class CustomClipOval extends StatelessWidget {
  const CustomClipOval({
    super.key,
    required this.height,
     required this .width,
  });
final double ?height;
final double width;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        AppImages.userImage,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
