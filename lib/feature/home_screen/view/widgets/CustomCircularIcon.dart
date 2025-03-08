import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lllllilil/core/utils/app_colors.dart';
import 'package:lllllilil/core/utils/app_icons.dart';

class CustomCircularIcon extends StatelessWidget {
  const CustomCircularIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:AppColors.light_black, width: 1.w),
      ),
      child: Icon(AppIcons.notification, size: 35.r),
    );
  }
}

