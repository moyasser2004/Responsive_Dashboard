import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_colors.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

class QuickInvoiceButton extends StatefulWidget {
  const QuickInvoiceButton({super.key});

  @override
  State<QuickInvoiceButton> createState() =>
      _QuickInvoiceButtonState();
}

class _QuickInvoiceButtonState extends State<QuickInvoiceButton> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: InkWell(
          onTap: () {
            currentIndex = 0;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: currentIndex == 0
                  ? AppColors.primaryColorLight
                  : AppColors.primaryColorWhiteLight,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 14,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Add more details",
                    style:
                        AppTextStyle.styleRegular18(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: currentIndex == 1
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorWhiteLight,
                    ),
                  ),
                )),
          ),
        )),
        const SizedBox(width: 10),
        Expanded(
            child: InkWell(
          onTap: () {
            currentIndex = 1;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: currentIndex == 1
                  ? AppColors.primaryColorLight
                  : AppColors.primaryColorWhiteLight,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16, horizontal: 20),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Send Money",
                    style:
                        AppTextStyle.styleRegular18(context).copyWith(
                      fontWeight: FontWeight.w600,
                      color: currentIndex == 0
                          ? AppColors.primaryColorLight
                          : AppColors.primaryColorWhiteLight,
                    ),
                  ),
                )),
          ),
        )),
      ],
    );
  }
}
