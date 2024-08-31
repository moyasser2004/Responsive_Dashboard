import 'package:flutter/material.dart';

import '../core/class/app_colors.dart';

class cardSmothIndecator extends StatelessWidget {
  const cardSmothIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            height: 9,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primaryColorLight),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Icon(
              size: 12,
              Icons.circle_rounded,
              color: AppColors.primaryBackGround,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(3),
            child: Icon(
              size: 12,
              Icons.circle_rounded,
              color: AppColors.primaryBackGround,
            ),
          ),
        ],
      ),
    );
  }
}
