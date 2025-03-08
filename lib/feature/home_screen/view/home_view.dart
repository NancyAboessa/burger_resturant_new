import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lllllilil/core/utils/app_colors.dart';
import 'package:lllllilil/core/utils/app_icons.dart';
import 'package:lllllilil/core/utils/app_images.dart';
import 'package:lllllilil/core/utils/app_strings.dart';
import 'package:lllllilil/core/utils/app_text_style.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.h,
        title: Row(
          spacing: 40.w,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipOval(
              child: Image.asset(
                AppImages.userImage,
                height: 40.h,
                width: 40.w,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              spacing: 8.r,
              children: [
                Text(
                  AppStrings.yourLocation,
                  style: AppTextStyle.normalGrayText(),
                ),
                Row(
                  children: [
                    Icon(AppIcons.location, color: AppColors.blue),
                    Text(
                      AppStrings.location,
                      style: AppTextStyle.normalBlackText(),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 1.w),
              ),
              child: Icon(AppIcons.notification, size: 35.r),
            ),
          ],
        ),
      ),
    );
  }
}
