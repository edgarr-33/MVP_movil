import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';

import 'content_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);
  
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController(initialPage: 0);
  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ejemplo",
      "text1": "ejemplo ejemplo ejemplo ejemplo",
      "image": "assets/images/B1.png",
    },
    {
      "text": "ejemplo",
      "text1": "ejemplo ejemplo ejemplo ejemplo",
      "image": "assets/images/B2.png",
    },
    {
      "text": "ejemplo",
      "text1": "ejemplo ejemplo ejemplo ejemplo",
      "image": "assets/images/B3.png",
    },
    {
      "text": "ejemplo",
      "text1": "ejemplo ejemplo ejemplo ejemplo",
      "image": "assets/images/B4.png",
    },
    {
      "text": "ejemplo",
      "text1": "ejemplo ejemplo ejemplo ejemplo",
      "image": "assets/images/B5.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) => ContentBoarding(
                      text: onBoardingDatas[index]["text"]!,
                      text1: onBoardingDatas[index]["text1"]!,
                      image: onBoardingDatas[index]["image"]!,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onBoardingDatas.length,
                          (index) => newMethod(index: index),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 180)),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: _button(indexAll : onBoardingDatas.length - 1),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
      onPressed: () {
        if (pages == onBoardingDatas.length - 1) {
                          Navigator.pushNamed(context, 'progress');
                        } else {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeIn);
                        }
      },
      child: Text(
        pages == indexAll ? 'Continuar' : 'Siguiente',
        style: TextStyle(
            color: pages == indexAll
                ? ColorsSelect.binBackgroundBo1
                : ColorsSelect.txtBoSubHe,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // <-- Radius
        ),
        side:  BorderSide(width: 1.0, color: pages == indexAll? Colors.transparent : ColorsSelect.txtBoSubHe),
        primary: pages == indexAll
            ? ColorsSelect.binBackgroundBo2
            : ColorsSelect.binBackgroundBo1,
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const  EdgeInsets.only(right: 10),
      height: 4,
      width: pages == index ? 20 : 12,
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        color: pages == index
            ? ColorsSelect.paginatorNext
            : ColorsSelect.paginator,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
