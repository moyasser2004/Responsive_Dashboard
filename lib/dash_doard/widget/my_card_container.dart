import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_images.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/class/app_colors.dart';
import 'card_list.dart';
import 'card_smoth_indecator.dart';
import 'card_widget.dart';
import 'my_card_top.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 26, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyCardTop(),
              const SizedBox(
                height: 22,
              ),
              Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      AppImages.imagesRectangle,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned.fill(
                    child: Image.asset(
                      AppImages.imagesMaskGroup,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const CardWidget(),
                ],
              ),
              const cardSmothIndecator(),
              const Divider(
                thickness: .3,
                color: AppColors.primaryGreyLight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Transaction History",
                        style: AppTextStyle.styleSemiBold20(context)
                            .copyWith(
                          color: AppColors.primaryColorDark,
                        ),
                      ),
                    ),
                    const Spacer(),
                    FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "see all",
                          style: AppTextStyle.styleRegular18(context),
                        ))
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "13 April, 2022",
                        style: AppTextStyle.styleRegular14(context),
                      ))),
              const SizedBox(
                height: 220,
                child: CardList(),
              ),
            ],
          ),
        ));
  }
}
