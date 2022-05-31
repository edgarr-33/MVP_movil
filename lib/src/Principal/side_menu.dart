import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final List<bool> _isOpen = [false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: _Profile(),
            ),
            ExpansionPanelList(
              expansionCallback: ((panelIndex, isExpanded) {
                setState(() {
                  _isOpen[panelIndex] = !isExpanded;
                });
              }),
              elevation: 0,
              expandedHeaderPadding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                ExpansionPanel(
                  isExpanded: _isOpen[0],
                  headerBuilder: (context, value) {
                    return Container(
                      child: const Center(
                        child: Text("Menu 1"),
                      ),
                    );
                  },
                  body: Container(
                    child: const Text("Opciones"),
                  ),
                ),
                ExpansionPanel(
                  isExpanded: _isOpen[1],
                  headerBuilder: (context, value) {
                    return Container(
                      child: const Center(
                        child: Text("Menu 1"),
                      ),
                    );
                  },
                  body: Container(
                    child: const Text("Opciones"),
                  ),
                )
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Cerrar Sesión"))
          ],
        ),
      ),
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          child: Image(image: AssetImage('assets/images/imglogo.png')),
          radius: 40,
        ),
        Text("Perfil 1"),
      ],
    );
  }
}
