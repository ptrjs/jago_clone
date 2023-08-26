import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const HomeView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: "Pocket",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.contact_page,
              ),
              label: "Contact",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.card,
              ),
              label: "Card",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.dotsHorizontal,
              ),
              label: "Other",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
