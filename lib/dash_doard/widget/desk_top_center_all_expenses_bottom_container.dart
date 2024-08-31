import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../core/class/app_colors.dart';
import '../core/class/app_images.dart';
import '../core/model/center_top_model.dart';
import '../core/style/app_style.dart';

class DeskRopCenterAllExpensesBottomContainer
    extends StatelessWidget {
  const DeskRopCenterAllExpensesBottomContainer({
    super.key,
    required this.model,
  });

  final CenterTopModel model;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 180 / 200,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primaryColorLight),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  screenWidth * 0.05 > 30 ? 30 : screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColorWhiteLight
                          .withOpacity(0.3),
                    ),
                    child: SvgPicture.asset(model.image),
                  ),
                  const Spacer(),
                  Flexible(
                    child: Transform.rotate(
                      angle: -90 / 180 * 3.14,
                      child: Center(
                        child: SvgPicture.asset(
                          AppImages.imagesArrowDown,
                          color: AppColors.primaryWhite,
                          width: 26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  model.title,
                  style: AppTextStyle.styleSemiBold16(context)
                      .copyWith(color: AppColors.primaryWhite),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "April 2022",
                  style: AppTextStyle.styleRegular14(context)
                      .copyWith(color: AppColors.primaryWhite),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$20,129",
                  style: AppTextStyle.styleSemiBold24(context)
                      .copyWith(color: AppColors.primaryWhite),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeskRopCenterAllExpensesBottomInactiveContainer
    extends StatelessWidget {
  const DeskRopCenterAllExpensesBottomInactiveContainer({
    super.key,
    required this.model,
  });

  final CenterTopModel model;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AspectRatio(
      aspectRatio: 180 / 200,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.color9)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  screenWidth * 0.05 > 30 ? 30 : screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryWhite,
                    ),
                    child: SvgPicture.asset(
                      model.image,
                      color: AppColors.primaryColorLight,
                    ),
                  ),
                  const Spacer(),
                  Flexible(
                    child: Transform.rotate(
                      angle: -90 / 180 * 3.14,
                      child: Center(
                        child: SvgPicture.asset(
                          AppImages.imagesArrowDown,
                          color: AppColors.primaryColorDark,
                          width: 26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  model.title,
                  style: AppTextStyle.styleSemiBold16(context),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "April 2022",
                  style: AppTextStyle.styleRegular14(context),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  "\$20,129",
                  style: AppTextStyle.styleSemiBold24(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
