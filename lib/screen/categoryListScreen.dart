import 'package:flutter/material.dart';
import 'package:recipes/components/ListRecipes.dart';
import 'package:recipes/components/appBarComponent.dart';

class CategoryList extends StatefulWidget {
  static const routeName = '/categoryList';
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  initState() {
    super.initState();
    recipesList.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments;

    recipesList.filterRecipeForCategory(argumentos.toString());

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const AppBarComponente(),
            Title(
                color: const Color.fromRGBO(113, 127, 127, 1),
                child: Text(
                  argumentos.toString(),
                  style: const TextStyle(
                      fontFamily: 'Mina',
                      color: Color.fromRGBO(113, 127, 127, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                  textDirection: TextDirection.rtl,
                )),
            Expanded(
                child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color.fromRGBO(250, 154, 24, 1)),
                    alignment: Alignment.center,
                    child: Text(recipesList.listItem[index].nameRecipe,
                        style: const TextStyle(
                            fontFamily: 'Mina',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white)));
              },
              itemCount: recipesList.listItem.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ))
          ],
        ));
  }
}
