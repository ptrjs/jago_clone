// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:jago_clone/shared/theme/theme_config.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        // border: Border.all(
        //   width: 1.0,
        //   color: Colors.grey[400]!,
        // ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(Icons.search, color: disabledTextColor),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Expanded(
            child: TextFormField(
              initialValue: null,
              decoration: InputDecoration.collapsed(
                  filled: true,
                  fillColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: disabledTextColor,
                  )),
              onFieldSubmitted: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
