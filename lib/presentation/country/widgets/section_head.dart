import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/app_colors.dart';

class SectionHead extends StatelessWidget {
  const SectionHead({
    super.key,
    required this.ttile,
  });
  final String ttile;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.w),
        child: Text(ttile,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).hintColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400)));
  }
}
