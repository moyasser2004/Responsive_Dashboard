import 'package:flutter/material.dart';
import '../core/style/app_style.dart';
import 'desk_top_center_all_expenses.dart';

class DeskRopCenterAllExpensesTop extends StatelessWidget {
  const DeskRopCenterAllExpensesTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: Row(
        children: [
          Text(
            "All Expenses",
            style: AppTextStyle.styleSemiBold20(context),
          ),
          const Spacer(
            flex: 3,
          ),
          const DeskTopCenterAllExpensesRow()
        ],
      ),
    );
  }
}
