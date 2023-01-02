import 'package:flutter/material.dart';
import 'package:recipes/main.dart';
import 'package:recipes/screen/principalScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(const Duration(milliseconds: 1500), (){});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const PrincipalScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(250, 154, 24, 1),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/icons/logo.png',
              width: 158,
              height: 158,
            ),
            const Text(
              "Receitas",
              style: TextStyle(
                  fontFamily: 'Mina',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            )
          ],
        )));
  }
}
