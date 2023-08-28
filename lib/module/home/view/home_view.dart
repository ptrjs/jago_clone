import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jago_clone/core.dart';

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
                    width: controller.isScrolled ? 15.0 : 24.0,
                    height: controller.isScrolled ? 15.0 : 24.0,
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
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileView()),
                  ),
                  child: Icon(
                    Icons.person,
                    size: controller.isScrolled ? 20.0 : 24.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Badge(
                  label: const Text(
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
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
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
                      const SizedBox(
                        height: 60.0,
                      ),
                      const HomeSearch(),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text(
                        "Spotlight",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      const HomeCarousel(),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Planning",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Close",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decorationColor: primaryColor,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            border: Border.all(
                              color: borderGreyColor,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: Row(
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/10729/10729123.png",
                                width: 70.0,
                                height: 70.0,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Always forget to pay bills?",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4.0,
                                    ),
                                    Text(
                                      "Make Bills Planning",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        decorationColor: primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Shortcut",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              decorationColor: primaryColor,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/1287/1287558.png",
                            title: "Pay with QR",
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          HomeMenuShortcut(
                            imageUrl:
                                "https://play-lh.googleusercontent.com/jTfqqKcAxz58d0FPFvdY-La_09ILnHQIOVowpggycbUH1gSS-IN2ZVKRRIIVRLte3Q",
                            title: "Investasi",
                            desc: "Hubungkan",
                            newInfo: "BARU!",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/2953/2953423.png",
                            title: "Main Pocket",
                            desc: "Rp10.000",
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPocketView()),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/625/625599.png",
                            title: "Transfer & Pay",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/3135/3135706.png",
                            title: "Charge Money",
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/8283/8283617.png",
                            title: "My Balance",
                            desc: "Rp15.000",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      const Row(
                        children: [
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/951/951764.png",
                            title: "Pay Bills",
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          HomeMenuShortcut(
                            imageUrl:
                                "https://cdn-icons-png.flaticon.com/128/3431/3431872.png",
                            title: "JagoRameRame",
                            desc: "Invite your friend & family",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 125,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.orange[200],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle,
                                size: 50.0,
                                color: primaryColor,
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              const Text(
                                "Add Shortcut",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
