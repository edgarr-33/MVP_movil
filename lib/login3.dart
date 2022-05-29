import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Login());

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: Column(
            children: [
              const Padding(padding:  EdgeInsets.only(top: 60)),
              Center(
                child: Container(
                  height: 250,
                  padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
                  child: Image.asset(
                    'assets/images/splash.png',
                    height: 500,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff3169f5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.face_outlined),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                      ),
                      Text(
                        'Continuar con Google',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff324fa5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.face_outlined),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                      ),
                      Text(
                        'Continuar con Facebook',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff64686f)),
                    primary: const Color(0xffffffff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                      ),
                      Text(
                        'Registrarse con e-mail',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30),
                      ),
                    ],
                  ),
                ),
              ),
              Column(children: [
                const Padding(padding:  EdgeInsets.only(top: 30)),
                Container(
              margin: const EdgeInsets.only(top:10),
              width: 300,
              child: Column(
                children: [
                  // Invitado
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Entrar como invitado',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460)
                        ),
                      )
                    ),
                  ),
                  // Vendedor
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        'Entrar como vendedor',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xf76aa757)
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
                Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 30, left: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const Text('¿Ya tienes una cuenta?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Inicia sesion',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ])
            ],
          )),
    );
  }
}
