import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/widget/tablet_app_bar.dart';

import '../core/class/app_colors.dart';
import 'desk_drop_drawer.dart';
import 'desk_top_rigth.dart';
import 'dsek_top_center.dart';

class ResponsiveTablet extends StatelessWidget {
  const ResponsiveTablet({super.key});

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
        width: 260,
        child: DeskTopDrawer(),
      ),
      body: const Row(
        children: [
          Expanded(flex: 5, child: DeskTopCenter()),
          Expanded(flex: 3, child: DeskTopRight()),
        ],
      ),
    );
  }
}
