
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../view/main_pocket_view.dart';

class MainPocketController extends State<MainPocketView> {
    static late MainPocketController instance;
    late MainPocketView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    