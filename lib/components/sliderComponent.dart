import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipes/components/Category.dart';

class SliderCardComponente extends StatefulWidget {
  final List category;

  const SliderCardComponente({super.key, required this.category});

  @override
  State<SliderCardComponente> createState() =>
      SliderCardComponenteState(listItem: this.category);
}

class SliderCardComponenteState extends State<SliderCardComponente> {
  final List listItem;

  @override
  initState() {
    super.initState();
    category.addListener(() {
      setState(() {});
    });
  }

  SliderCardComponenteState({required this.listItem});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 30,
        crossAxisSpacing: 10,
        children: listItem
            .map((item) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/categoryList',
                        arguments: item.category);
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 79,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color.fromRGBO(241, 245, 244, 1),
                        ),
                        child: Center(
                            child: Image.asset(
                          item.image,
                          width: 62,
                          height: 62,
                        )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(item.category),
                    ],
                  ),
                ))
            .toList());
  }
}
