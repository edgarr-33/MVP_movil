import 'package:flutter/material.dart';

import '../page/modal_window.dart';

class CarrouselCircleImg extends StatelessWidget {
  const CarrouselCircleImg({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.15,
      // color: Colors.blueGrey,
      child: Container(
        // color: Colors.black,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: InkWell(
                  onTap:  () async {
              await showDialog(
                  context: context,
                  builder: (_) => DialogContainer(image: "https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1"));
                  },
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1"),
                ),
              ),
                ),
              ),
              // child: CircleAvatar(
               
              //   backgroundImage: NetworkImage("https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2021/08/stitch-png-clipart.png?resize=600%2C600&ssl=1"),
              //   radius: 30,
              // ),
            );
          }),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
