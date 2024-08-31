import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/widget/desktop_quick_invoic.dart';
import 'Desk_top_center-all_expenses.dart';

class DeskTopCenter extends StatelessWidget {
  const DeskTopCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: DeskTopCenterAllExpenses()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: DesktopQuickInvoice(),
            ),
          ],
        ));
  }
}
