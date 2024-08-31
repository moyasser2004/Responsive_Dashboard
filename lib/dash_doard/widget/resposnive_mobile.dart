import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/widget/tablet_app_bar.dart';

import '../core/class/app_colors.dart';
import 'Desk_top_center-all_expenses.dart';
import 'desk_drop_drawer.dart';
import 'desktop_quick_invoic.dart';
import 'my_card_container.dart';
import 'my_incom_container.dart';

class ResposniveMobile extends StatelessWidget {
  const ResposniveMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey =
        GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.primaryColorWhiteLightest,
      appBar: TabletAppBar(
        scaffoldKey: scaffoldKey,
      ),
      drawer: const Drawer(
        width: 240,
        child: DeskTopDrawer(),
      ),
      body: const CustomScrollView(
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
          SliverToBoxAdapter(
            child: MyCardContainer(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverToBoxAdapter(
            child: MyIncomeContainer(),
          )
        ],
      ),
    );
  }
}
