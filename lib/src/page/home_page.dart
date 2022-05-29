import 'dart:async';

import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import '../splash/styles/colors/colors_views.dart';
import 'modal_window.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int pages = 0;
  var image =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png';
  List<String> pokebolas = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Pokebola-pokeball-png-0.png/769px-Pokebola-pokeball-png-0.png',
  ];
  PageController controller = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _changeImage();
  }

  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
            width: double.infinity,
            height: 150,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  pages = value;
                });
              },
              itemCount: 3,
              itemBuilder: (context, index) => Image.asset(
                'assets/images/B1.png',
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      List.generate(3, (index) => animatedMethod(index: index)),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20, top: 50, right: 20),
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorsSelect.txtBoHe,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 10, left: 10),
                    child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                        )),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
              width: double.infinity,
              height: 200,
              color: ColorsSelect.txtBoHe,
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children: pokebolas.map((e) => _createCards(e)).toList(),
              ))
        ],
      ),
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 15,
        backgroundColor: ColorsSelect.txtBoHe,
        onTap: (int val) {
          switch (val) {
            case 0:
              {
                // Navigator.pushReplacementNamed(context, 'home2');
              }
              break;

            case 1:
              {
                // val = 2;
                // Navigator.pushReplacementNamed(context, 'home2');
              }
              break;
            case 2:
              {
                // Navigator.pushReplacementNamed(context, 'home2');
              }
              break;
            default:
              {
                //statements;
              }
              break;
          }

          setState(() => _index = val);
        },
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.backup_table, title: 'Ejemplo'),
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(
              icon: Icons.account_balance_rounded, title: 'Account'),
        ],
      ),
    );
  }

  AnimatedContainer animatedMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: pages == index
              ? ColorsSelect.paginatorNext
              : ColorsSelect.txtBoSubHe),
      height: 5,
      width: pages == index ? 20 : 15,
      duration: kThemeAnimationDuration,
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

  Card _createCards(String e) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(37)),
      child: InkWell(
        onTap:  () async {
            await showDialog(
                context: context,
                builder: (_) => DialogContainer(image: image));
          },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(e),
          ),
        ),
      ),
    );
  }
}
