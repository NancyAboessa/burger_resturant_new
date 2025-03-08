import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lllllilil/core/utils/app_colors.dart';
import 'package:lllllilil/core/utils/app_icons.dart';
import 'package:lllllilil/core/utils/app_images.dart';
import 'package:lllllilil/core/utils/app_strings.dart';
import 'package:lllllilil/core/utils/app_text_style.dart';
import 'package:lllllilil/feature/home_screen/view/widgets/CustomCircularIcon.dart';
import 'package:lllllilil/feature/home_screen/view/widgets/custom_clip_oval.dart';

class CustomAppBar extends StatefulWidget {

  CustomAppBar({
    super.key,
    required this.isWithBackButton,
    this.text,
    this.actions,
  });

  bool isWithBackButton = false;
  String? text;
List<Widget> ?actions;
 PreferredSizeWidget? customAppBar() {
    if (isWithBackButton == true) {
      return AppBar(
        leading: Icon(AppIcons.backArrow),
        title: Text(text!),
        actions: actions,
      );
    } else {
      AppBar(
        toolbarHeight: 90.h,
        title: Row(
          spacing: 40.w,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomClipOval(height: 40.h, width: 40.w,),
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
            CustomCircularIcon(),
          ],
        ),
      );
    }
    return null;
  }
  @override
  State<StatefulWidget> createState()=> throw UnimplementedError();


}

