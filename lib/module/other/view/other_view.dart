
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../controller/other_controller.dart';

class OtherView extends StatefulWidget {
    const OtherView({Key? key}) : super(key: key);

    Widget build(context, OtherController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Other"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Column(
            children: [],
            ),
        ),
        ),
    );
    }

    @override
    State<OtherView> createState() => OtherController();
}
    