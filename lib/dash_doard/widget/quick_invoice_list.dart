import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_images.dart';

import '../core/model/drawer_avtare_model.dart';
import 'drawe_avater_list.dart';

class QuickInvoiceList extends StatelessWidget {
  const QuickInvoiceList({super.key});

  static const List<DrawerAvatarModel> list = [
    DrawerAvatarModel(
        title: 'DrawerAvatarModel',
        image: AppImages.imagesFrame1,
        supTitle: 'DrawerAvatar@gmail'),
    DrawerAvatarModel(
        title: 'DrawerAvatarModel',
        image: AppImages.imagesFrame2,
        supTitle: 'DrawerAvatar@gmail'),
    DrawerAvatarModel(
        title: 'DrawerAvatarModel',
        image: AppImages.imagesFrame1,
        supTitle: 'DrawerAvatar@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: DrawerAvatarList(
            model: QuickInvoiceList.list[index],
          ),
        ),
      ),
    );
  }
}
