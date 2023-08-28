import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';

class MainPocketView extends StatefulWidget {
  const MainPocketView({Key? key}) : super(key: key);

  Widget build(context, MainPocketController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Pocket Details",
        ),
        backgroundColor: backgroundCreamColor,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.more_horiz_outlined,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 400,
              width: MediaQuery.of(context).size.width,
              color: backgroundCreamColor,
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/128/2953/2953423.png",
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1234 5678 1234",
                        style:
                            TextStyle(fontSize: 12.0, color: disabledTextColor),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Icon(
                        Icons.copy,
                        size: 14.0,
                        color: disabledTextColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Main Pocket",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Rp10.000",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
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
                              "Add Money",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.arrowUpCircle,
                              size: 50.0,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            const Text(
                              "Move Money",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(
                              MdiIcons.arrowRightCircle,
                              size: 50.0,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            const Text(
                              "Transfer & Pay",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 24,
                          offset: Offset(0, 11),
                        ),
                      ],
                      border: Border.all(
                        color: borderGreyColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          8.0,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/128/311/311147.png",
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          const Text(
                            "Connect to card",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.link,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6.0,
                              horizontal: 12.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: const BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.grey[100]!,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.search,
                                    color: disabledTextColor,
                                  ),
                                ),
                                Expanded(
                                  child: TextFormField(
                                    initialValue: null,
                                    decoration: InputDecoration.collapsed(
                                        filled: true,
                                        fillColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        hintText: "Search Transaction",
                                        hintStyle: TextStyle(
                                          color: disabledTextColor,
                                        )),
                                    onFieldSubmitted: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.sort,
                              size: 24.0,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/10305/10305798.png",
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "JUL 2023",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: disabledTextColor),
                        ),
                        const Spacer(),
                        Text(
                          "Updated today, 22.49",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: disabledTextColor,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: backgroundYellowColor,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/6037/6037345.png",
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Interest tax",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "28 Jul 2023",
                                  style: TextStyle(
                                    color: disabledTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "-Rp0",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Tax",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: backgroundYellowColor,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/918/918821.png",
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Interest",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "28 Jul 2023",
                                  style: TextStyle(
                                    color: disabledTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "+Rp2",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: successColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                const Text(
                                  "Interest",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text(
                          "JUN 2023",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: disabledTextColor),
                        ),
                        const Spacer(),
                        Text(
                          "",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: disabledTextColor,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: backgroundYellowColor,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/6037/6037345.png",
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Interest tax",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "28 Jun 2023",
                                  style: TextStyle(
                                    color: disabledTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "-Rp0",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "Tax",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: backgroundYellowColor,
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/918/918821.png",
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Interest",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                Text(
                                  "28 Jun 2023",
                                  style: TextStyle(
                                    color: disabledTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "+Rp2",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: successColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4.0,
                                ),
                                const Text(
                                  "Interest",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainPocketView> createState() => MainPocketController();
}
