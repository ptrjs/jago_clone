// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';

class HomeMenuShortcut extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String? desc;
  final String? newInfo;
  const HomeMenuShortcut({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.desc,
    this.newInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: 125,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
              color: Colors.white,
              border: Border.all(
                color: borderGreyColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        //"https://play-lh.googleusercontent.com/jTfqqKcAxz58d0FPFvdY-La_09ILnHQIOVowpggycbUH1gSS-IN2ZVKRRIIVRLte3Q",
                        imageUrl,
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        // "Investasi",
                        title,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      if (desc != null)
                        Text(
                          desc!,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: disabledTextColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      const SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (newInfo != null)
            Positioned(
              top: 12,
              right: 12,
              child: Text(
                //"BARU!",
                newInfo!,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
        ],
      ),
    );
  }
}
