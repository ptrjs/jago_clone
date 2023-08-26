
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../controller/pocket_controller.dart';

class PocketView extends StatefulWidget {
    const PocketView({Key? key}) : super(key: key);

    Widget build(context, PocketController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Pocket"),
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
    State<PocketView> createState() => PocketController();
}
    