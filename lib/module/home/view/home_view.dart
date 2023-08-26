import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jago_clone/core.dart';
import 'package:jago_clone/shared/theme/theme_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 12, 24, 0),
              child: Row(
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/128/5240/5240778.png",
                    width: controller.isScrolled ? 15.0 : 30.0,
                    height: controller.isScrolled ? 15.0 : 30.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Jago",
                    style: GoogleFonts.aBeeZee(
                      fontSize: controller.isScrolled ? 15.0 : 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor:
            controller.isScrolled ? Colors.white : Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 24, 0),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: controller.isScrolled ? 20.0 : 24.0,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Badge(
                  label: Text(
                    "4",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    size: controller.isScrolled ? 20.0 : 24.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: colorsGradient,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 40, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Afternoon, PETER JOSE",
                  style: TextStyle(
                    fontSize: 10.0,
                    color: disabledTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
