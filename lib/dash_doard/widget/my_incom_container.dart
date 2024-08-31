import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_images.dart';

import 'desk_rop_center_all_expenses_top.dart';

class MyIncomeContainer extends StatelessWidget {
  const MyIncomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DeskRopCenterAllExpensesTop(),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Image.asset(
                          "assets/images/circle_image.jpg"))
                ])));
  }
}
