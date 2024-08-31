import 'package:flutter/material.dart';

import '../core/class/app_colors.dart';
import '../core/model/card_model.dart';
import '../core/style/app_style.dart';

class CardListItem extends StatelessWidget {
  const CardListItem(
      {super.key,
      required this.cardListItem,
      required this.isActive});

  final CardModel cardListItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
          elevation: 0.0,
          color: AppColors.primaryColorWhiteLightest,
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 5, horizontal: 0),
              child: ListTile(
                  leading: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardListItem.title,
                          style:
                              AppTextStyle.styleSemiBold16(context),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            cardListItem.description,
                            style:
                                AppTextStyle.styleRegular16(context),
                          ),
                        )
                      ],
                    ),
                  ),
                  trailing: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      cardListItem.price,
                      style: AppTextStyle.styleSemiBold16(context)
                          .copyWith(
                        color: isActive
                            ? AppColors.primaryColorOrange
                            : AppColors.primaryGreenLight,
                      ),
                    ),
                  )))),
    );
  }
}
