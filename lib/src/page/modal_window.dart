import 'package:flutter/material.dart';

class DialogContainer extends StatelessWidget {
  DialogContainer({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 450,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 130,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/imglogo.png')
                  // image: NetworkImage(image),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                'Descripción',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const Text(
              'Ohana significa familia, y tu familia nunca te abandona ni te olvida',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}