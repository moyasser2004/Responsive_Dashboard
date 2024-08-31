import 'package:flutter/cupertino.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/class/app_colors.dart';

class MyCardTop extends StatelessWidget {
  const MyCardTop({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        "My Card ",
        style: AppTextStyle.styleSemiBold20(context).copyWith(
          color: AppColors.primaryColorDark,
        ),
      ),
    );
  }
}
