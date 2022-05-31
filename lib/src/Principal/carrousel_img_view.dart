import 'dart:async';

import 'package:flutter/material.dart';

import '../splash/styles/colors/colors_views.dart';

class CarrouselImage extends StatefulWidget {
  const CarrouselImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CarrouselImage> createState() => _CarrouselImageState();
}

class _CarrouselImageState extends State<CarrouselImage> {
  int pages = 0;
  final int count = 10;
  int actual = 0;

  final PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    controller.addListener(() {
      if (controller.page!.round() != actual) {
        setState(() {
          actual = controller.page!.round();
        });
      }
    });
    _changeImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height * 0.4,
      // color: Colors.red,
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: controller,
              itemCount: count,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 15,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        alignment: FractionalOffset.center,
                        image: NetworkImage(
                          "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1",
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(count, (index) {
                return AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  height: 7,
                  width: actual == index ? 20 : 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: ColorsViews.activeSliderColor,
                    color: actual == index
                        ? ColorsSelect.bintextBo1
                        : ColorsSelect.txtBoHe,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

    void _changeImage() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pages == 2) {
        controller.jumpToPage(controller.initialPage);
      } else {
        controller.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.easeIn);
      }
    });
  }
}
