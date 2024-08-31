import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_colors.dart';

import '../core/style/app_style.dart';

class TabletAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TabletAppBar({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.settings)),
      title: Text(
        "Money Transaction",
        style: AppTextStyle.styleSemiBold20(context),
      ),
      centerTitle: true,
      backgroundColor: AppColors.primaryColorLight,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
