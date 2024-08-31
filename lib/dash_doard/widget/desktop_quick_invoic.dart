import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/widget/quick_invoiceButton.dart';
import 'package:responsiveadaptive/dash_doard/widget/quick_invoiceTop.dart';
import 'package:responsiveadaptive/dash_doard/widget/quick_invoice_customer_data.dart';
import 'package:responsiveadaptive/dash_doard/widget/quick_invoice_list.dart';

import '../core/class/app_colors.dart';
import '../core/model/quick_inovice_model.dart';
import '../core/style/app_style.dart';

class DesktopQuickInvoice extends StatelessWidget {
  const DesktopQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryColorWhiteLight,
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuickInvoiceTop(),
            Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 20),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Latest Transaction",
                    style:
                        AppTextStyle.styleRegular16(context).copyWith(
                      color: AppColors.primaryColorBlack,
                    ),
                  ),
                )),
            const QuickInvoiceList(),
            const SizedBox(height: 20),
            const Divider(
              thickness: .2,
              color: AppColors.primaryGrey,
            ),
            const QuickInvoiceCustomerData(
              quickInvoiceModel: QuickInvoiceModel(
                name: 'Customer Name',
                formName: "Type customer name ",
                email: "Customer Email",
                formEmail: "Type customer email",
              ),
            ),
            const QuickInvoiceCustomerData(
              quickInvoiceModel: QuickInvoiceModel(
                name: 'Item Name',
                formName: "Type item name ",
                email: "Item Mount",
                formEmail: "USD >",
              ),
            ),
            const QuickInvoiceButton(),
          ],
        ),
      ),
    );
  }
}
