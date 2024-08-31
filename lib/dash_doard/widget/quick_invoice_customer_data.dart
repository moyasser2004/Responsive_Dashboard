import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveadaptive/dash_doard/core/model/quick_inovice_model.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/class/app_colors.dart';

class QuickInvoiceCustomerData extends StatelessWidget {
  const QuickInvoiceCustomerData(
      {super.key, required this.quickInvoiceModel});

  final QuickInvoiceModel quickInvoiceModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    quickInvoiceModel.name,
                    style: AppTextStyle.styleMedium16(context),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        quickInvoiceModel.formName,
                        style: AppTextStyle.styleMedium16(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quickInvoiceModel.email,
                  style: AppTextStyle.styleMedium16(context),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quickInvoiceModel.formEmail,
                      style: AppTextStyle.styleMedium16(context),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
