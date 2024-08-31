import 'package:flutter/material.dart';

import '../core/class/app_colors.dart';
import '../core/style/app_style.dart';

class QuickInvoiceTop extends StatelessWidget {
  const QuickInvoiceTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Quick Invoice",
            style: AppTextStyle.styleSemiBold20(context)
                .copyWith(color: AppColors.primaryColorBlack),
          ),
        ),
        const Spacer(),
        CircleAvatar(
            backgroundColor: AppColors.primaryColorWhiteLightest,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: AppColors.primaryColorLight,
              ),
            ))
      ],
    );
  }
}
