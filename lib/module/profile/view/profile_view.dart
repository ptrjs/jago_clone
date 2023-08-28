import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.edit,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/128/847/847969.png",
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "PETER JOSE",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "admin@gmail.com",
                    style: TextStyle(fontSize: 12.0, color: disabledTextColor),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "085212345678",
                    style: TextStyle(fontSize: 12.0, color: disabledTextColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                height: 120.0,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "Main Pocket Number",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "1234 5678 1234",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Icon(
                                Icons.copy,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "Account Status",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "Active",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "JagoID",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "abc123",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
            const SizedBox(
              height: 40.0,
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: backgroundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Official Name",
                        style: TextStyle(color: textColor),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.info,
                        size: 24.0,
                        color: primaryColor,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "PETER JOSE",
                            style: TextStyle(
                                fontSize: 16.0, color: disabledTextColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: disabledTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: backgroundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Nickname",
                        style: TextStyle(color: textColor),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            "PETER JOSE",
                            style: TextStyle(
                                fontSize: 16.0, color: disabledTextColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: disabledTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              height: 70,
              width: MediaQuery.of(context).size.width,
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Correspondence Address",
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "JL. ABC No 1, Planet Namek.",
                    style: TextStyle(fontSize: 16.0, color: disabledTextColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: disabledTextColor,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My Document",
                        style: TextStyle(color: textColor),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.chevron_right,
                        size: 24.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: disabledTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
