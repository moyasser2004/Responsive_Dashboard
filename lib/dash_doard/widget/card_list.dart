import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/core/class/app_colors.dart';
import 'package:responsiveadaptive/dash_doard/core/style/app_style.dart';

import '../core/model/card_model.dart';
import 'card_list_item.dart';

class CardList extends StatefulWidget {
  const CardList({super.key});

  static final List<CardModel> cards = [
    CardModel(
      title: 'Cash Withdrawal',
      description: '13 April, 2022',
      price: "\$20,129",
    ),
    CardModel(
      title: 'Landing Page project',
      description: '13 April 2022  at 3:30 Pm ',
      price: "\$2,000",
    ),
    CardModel(
      title: "Juni Mobile App project",
      description: '13 April, 2022',
      price: "\$20,129",
    ),
  ];

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: CardList.cards.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: CardListItem(
                cardListItem: CardList.cards[index],
                isActive: currentIndex == index,
              ),
            ));
  }
}
