import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_images.dart';

import '../core/class/app_colors.dart';
import '../core/style/app_style.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Syah Bandi",
              style: AppTextStyle.styleRegular18(context).copyWith(
                color: AppColors.primaryWhite,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 20),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(AppImages.imagesGallery))),
          const SizedBox(height: 26),
          Align(
            alignment: Alignment.bottomRight,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text("0918 8124 0042 8129",
                  style:
                      AppTextStyle.styleSemiBold16(context).copyWith(
                    fontSize: 18,
                    color: AppColors.primaryWhite,
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "12/20   _ 124",
                style: AppTextStyle.styleRegular14(context).copyWith(
                  color: AppColors.primaryWhite,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
