import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/painters/progressPainter.dart';
import 'package:flutter_application_1/src/splash/styles/colors/colors_views.dart';


class ProgressView extends StatefulWidget {
  ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double progress = 0.0;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateProgress();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: ProgressPainter(llenadoBarra: progress),
          ),
        )
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(
      const Duration(
        milliseconds: 400
      ), (timer) {
        if (progress == 100) {
          Navigator.pushReplacementNamed(context, 'home');
        }
        else {
          setState(() {
            progress = progress + 10;
          });
        }
    });
  }
}


