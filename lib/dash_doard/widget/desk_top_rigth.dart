import 'package:flutter/material.dart';

import 'my_card_container.dart';
import 'my_incom_container.dart';

class DeskTopRight extends StatelessWidget {
  const DeskTopRight({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding:
            EdgeInsets.only(right: 16, top: 20, bottom: 10, left: 0),
        child: CustomScrollView(
          slivers: [
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
        ));
  }
}
