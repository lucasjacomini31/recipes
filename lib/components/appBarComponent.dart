import 'package:flutter/material.dart';

class AppBarComponente extends StatelessWidget {
  const AppBarComponente({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
              child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              'assets/icons/left_arrow_icon.png',
              width: 35,
              height: 35,
            ),
          )),
          Container(
              child: Row(children: [
            Image.asset(
              'assets/icons/logo.png',
              width: 48,
              height: 48,
            ),
            const Text('Receitas',
                style: TextStyle(
                    fontFamily: 'Mina',
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Color.fromRGBO(250, 154, 24, 1)))
          ]))
        ]);
  }
}
