import 'package:flutter/material.dart';

class _Category extends ChangeNotifier {
  final listItemAll = <Items>[];

  final listItem = <Items>[
    Items('assets/icons/beef_icon_food.png', 'Carnes'),
    Items('assets/icons/cake_icon_food.png', 'Bolos'),
    Items('assets/icons/pasta_icon_food.png', 'Massa'),
    Items('assets/icons/rice_icon_food.png', 'Arroz'),
    Items('assets/icons/sweet_icon_food.png', 'Doces'),
  ];

  findCategory(String filter) {
    listItem.retainWhere((items) {
      return items.category
          .toLowerCase()
          .contains(filter.toString().toLowerCase());
    });

    if (filter == "") {
      listItem.clear();

      listItem.addAll([
        Items('assets/icons/beef_icon_food.png', 'Carnes'),
        Items('assets/icons/cake_icon_food.png', 'Bolos'),
        Items('assets/icons/pasta_icon_food.png', 'Massa'),
        Items('assets/icons/rice_icon_food.png', 'Arroz'),
        Items('assets/icons/sweet_icon_food.png', 'Doces'),
      ]);
    }

    notifyListeners();
  }

  reloadItens() {}
}

class Items {
  String image;
  String category;

  Items(this.image, this.category);
}

final category = _Category();
