import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipes/components/Category.dart';
import 'package:recipes/components/appBarComponent.dart';
import '../components/textFieldFindComponent.dart';
import '../components/sliderComponent.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({super.key});

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setFullScreen();
  }

  _setFullScreen() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            AppBarComponente(),
            SizedBox(
              height: 10,
            ),
            const TextFieldFind(
                placeholderTitle: 'Busque pela categoria desejada'),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SliderCardComponente(category: category.listItem),
            )
          ],
        ));
  }
}
