import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../core/class/app_images.dart';
import '../core/model/center_top_model.dart';
import 'desk_top_center_all_expenses_bottom_container.dart';

class DeskRopCenterAllExpensesBottom extends StatelessWidget {
  const DeskRopCenterAllExpensesBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: DeskRopCenterAllExpensesBottomContainer(
              model: CenterTopModel(
                  title: 'Balance', image: AppImages.imagesMoneys),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: DeskRopCenterAllExpensesBottomInactiveContainer(
              model: CenterTopModel(
                  title: 'Income',
                  image: AppImages.imagesCardReceive),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: DeskRopCenterAllExpensesBottomInactiveContainer(
              model: CenterTopModel(
                  title: 'Expense', image: AppImages.imagesCardSend),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
