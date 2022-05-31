import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/Principal/side_menu.dart';

import '../splash/styles/colors/colors_views.dart';
import 'cards_view.dart';
import 'carrousel_circle_img_view.dart';
import 'carrousel_img_view.dart';


class PrincipalPage extends StatelessWidget {
  PrincipalPage({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(child: SideMenu()),
      appBar: AppBar(
        
        title: const Text('Principal'),
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
      body: const _Body(),
      
       bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: ColorsSelect.txtBoHe,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          CarrouselImage(size: size),
          CarrouselCircleImg(size: size),
          CardsView(size: size),
          CardsView(size: size),
        ],
      ),
    );
  }
}
