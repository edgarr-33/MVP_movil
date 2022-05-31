import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Principal/principal_page.dart';
import 'package:flutter_application_1/src/page/home_header.dart';
import 'package:flutter_application_1/src/page/home_page.dart';
import 'package:flutter_application_1/src/page/login.dart';
import 'package:flutter_application_1/src/page/recuperar.dart';
import 'package:flutter_application_1/src/page/registro.dart';
import 'package:flutter_application_1/src/painters/progressView.dart';
import 'package:flutter_application_1/src/splash/splash_view.dart';
import 'src/page/login3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'movil',
      initialRoute: 'home2',
      routes: {
      'home': (BuildContext context) => const HomePage(),

      // 'home': (BuildContext context) => const Login(),
      'act2': (BuildContext context) => const HomeHeader(),
      'splash' : (BuildContext context)  => const SplashView(),
      'progress':(BuildContext context) =>  ProgressView(),
      'registro':(BuildContext context) =>  const Registro(),
      'login':(BuildContext context) =>  const LoginPage(),
      'recuperar':(BuildContext context) =>  const RecuperarPage(),
      // 'home2':(BuildContext context) =>  const Home(),
      'home2':(BuildContext context) =>  PrincipalPage(),
      },
    );
  }
}
      