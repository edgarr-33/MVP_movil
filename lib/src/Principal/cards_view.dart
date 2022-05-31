import 'package:flutter/material.dart';

import '../page/modal_window.dart';

class CardsView extends StatelessWidget {
  const CardsView({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.4,
      // color: Colors.greenAccent,
      child: Row(
        children: [
          _Card(
            size: size,
            urlImg:
                "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1",
            info: "Ipsum irure exercitation esse est sit aliqua Lorem fugiat."
                "Mollit qui veniam et deserunt qui mollit proident ad tempor."
                "Quis esse est cillum pariatur amet do aliquip. Elit aute Lorem"
                "labore sunt amet amet non nulla mollit dolore cillum adipisicing"
                "consequat laborum. Magna laboris est duis sunt enim eiusmod do ex."
                " Cupidatat ex laboris dolor commodo ad.",
          ),
          _Card(
            size: size,
            urlImg:
                "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1",
            info: "Ipsum irure exercitation esse est sit aliqua Lorem fugiat."
                "Mollit qui veniam et deserunt qui mollit proident ad tempor."
                "Quis esse est cillum pariatur amet do aliquip. Elit aute Lorem"
                "labore sunt amet amet non nulla mollit dolore cillum adipisicing"
                "consequat laborum. Magna laboris est duis sunt enim eiusmod do ex."
                " Cupidatat ex laboris dolor commodo ad.",
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
    required this.size,
    required this.urlImg,
    required this.info,
  }) : super(key: key);

  final Size size;
  final String urlImg;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      padding: const EdgeInsets.all(8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
        child: InkWell(
          onTap:  () async {
              await showDialog(
                  context: context,
                  builder: (_) => DialogContainer(image: "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1"));
            },
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1"),
                ),
              ),
              const Text(
                "Ipsum irure exercitation esse est sit aliqua Lorem fugiat."
                "Mollit qui veniam et deserunt qui mollit proident ad tempor."
                "Quis esse est cillum pariatur amet do aliquip. Elit aute Lorem"
                "labore sunt amet amet non nulla mollit dolore cillum adipisicing"
                "consequat laborum. Magna laboris est duis sunt enim eiusmod do ex."
                " Cupidatat ex laboris dolor commodo ad.",
                maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center)
            ],
          ),
        ),
        // child: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(10),
        //       child: Container(
        //         height: 200,
        //         // padding: const EdgeInsets.all(10),
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(10),
        //           image: DecorationImage(
        //             fit: BoxFit.cover,
        //             alignment: FractionalOffset.center,
        //             image: NetworkImage(
        //               urlImg,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //     Text(
        //       info,
        //       maxLines: 5,
        //       overflow: TextOverflow.ellipsis,
        //       textAlign: TextAlign.center,
        //     ),
        //   ],
        // ),
      ),
    );
  }


  
}
