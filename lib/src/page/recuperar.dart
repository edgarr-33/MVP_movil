import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';

class RecuperarPage extends StatefulWidget {
  const RecuperarPage({ Key? key }) : super(key: key);

  @override
  State<RecuperarPage> createState() => _RecuperarPageState();
}

class _RecuperarPageState extends State<RecuperarPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: ColorsSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Recuperar contraseña'),
        iconTheme: const IconThemeData(color: ColorsSelect.paginatorNext),
        actions: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 60,
            width: 100,
            child: Image.asset('assets/images/splash.png'),
          )
        ],
        backgroundColor: ColorsSelect.txtBoHe,
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 50, top: 40,right: 60),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
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
                  onChanged: (text) {},
                ),
              ),
              Container(
              padding: const EdgeInsets.only(left:10, top: 15),
              margin: const EdgeInsets.only(right: 75),
              child: const Text(
                  'Ingrese su correo electronico registrado y le \nenviaremos un correo electronico que contiene un \nenlace para restablecer su contraseña',
                  style:
                      TextStyle(fontSize: 14, color: ColorsSelect.txtBoSubHe)),
            ),
                  const Padding(padding: EdgeInsets.only(top:350)),
                  Container(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text(
                        'Enviar solicitud',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: ColorsSelect.splash,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}