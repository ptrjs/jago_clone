
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../view/pocket_view.dart';

class PocketController extends State<PocketView> {
    static late PocketController instance;
    late PocketView view;

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
        
    