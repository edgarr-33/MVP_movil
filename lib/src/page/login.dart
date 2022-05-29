import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';
import 'package:flutter_application_1/src/models/login_service.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool mostrar = true;
  bool ver = false;
  String? email = '';
  String? password = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Iniciar sesion'),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 90),
            height: 60,
            width: 170,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 50, top: 40, right: 75),
                child: const Text(
                  'Inicia sesion con tu cuenta para continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: ColorsSelect.txtBoSubHe,fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 250),
                child: const Text(
                  'Correo electronico',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Direccion de correo',
                  ),
                  onChanged: (text) {
                    email= text;                    
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                margin: const EdgeInsets.only(right: 290),
                child: const Text(
                  'Contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  obscureText: mostrar,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon:
                          Icon(mostrar ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          mostrar = !mostrar;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Contraseña',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
             Padding(
               padding: EdgeInsets.only(right: 10),
               child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'recuperar');
                          },
                          child: const Text(
                            '¿Has olvidado tu contraseña?',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: ColorsSelect.paginatorNext,
                            ),
                          ),
                        )
                      ],
                    ),
             ),
                  const Padding(padding: EdgeInsets.only(top:160)),
                  Container(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Iniciar sesion',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        if (email == '' && password == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1000),
                              content: Text('Rellene los campos'),
                            ),
                          );
                        } else {
                          login(email!, password!).then((value) {
                                print(value);
                                if (value['status'] == 'success') {
                                  Navigator.pushReplacementNamed(
                                      context, 'home2');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      duration: Duration(milliseconds: 1000),
                                      content: Text('Contraseña incorrecta'),
                                    ),
                                  );
                                }
                              });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splash,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
              Container(
                  width: 300,
                  margin: const EdgeInsets.only(top: 30, left: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      const Text('¿Todavia no tienes cuenta?',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      
                      TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'registro');
                        },
                        child: const Text(
                          'Registrate',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ColorsSelect.paginatorNext,
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        ),

      ),
    );
  }
}