import 'package:flutter/material.dart';

class _RecipesList extends ChangeNotifier {
  final listItem = <Recipes>[];

  filterRecipeForCategory(String filter) {
    reloadRecipes();

    listItem.retainWhere((items) {
      return items.category
          .toLowerCase()
          .contains(filter.toString().toLowerCase());
    });

    notifyListeners();
  }

  reloadRecipes() {
    listItem.clear();

    listItem.addAll([
      Recipes('Bolo Gelado', 'Bolos'),
      Recipes('Bolo Simples', 'Bolos'),
      Recipes('Carne Assada', 'Carnes')
    ]);
  }
}

class Recipes {
  String nameRecipe;
  String category;

  Recipes(this.nameRecipe, this.category);
}

final recipesList = _RecipesList();
