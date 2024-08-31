import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/class/app_colors.dart';
import '../core/class/app_images.dart';
import '../core/style/app_style.dart';

class DeskTopCenterAllExpensesRow extends StatelessWidget {
  const DeskTopCenterAllExpensesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: FittedBox(
      fit: BoxFit.fitHeight,
      child: Container(
        alignment: Alignment.centerRight,
        height: 50,
        width: 132,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.color17),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Monthly",
                  style: AppTextStyle.styleRegular16(context)
                      .copyWith(color: AppColors.primaryColorDark)),
              SvgPicture.asset(AppImages.imagesArrowDown)
            ]),
      ),
    ));
  }
}
