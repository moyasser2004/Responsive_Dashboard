import 'package:flutter/material.dart';

import '../../core/class/app_colors.dart';
import '../../widget/desk_drop_drawer.dart';
import '../../widget/desk_top_rigth.dart';
import '../../widget/dsek_top_center.dart';

class ResponsiveDesktopLayout extends StatelessWidget {
  const ResponsiveDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColorWhiteLightest,
      body: Row(
        children: [
          Expanded(flex: 2, child: DeskTopDrawer()),
          Expanded(flex: 5, child: DeskTopCenter()),
          Expanded(flex: 3, child: DeskTopRight()),
        ],
      ),
    );
  }
}
