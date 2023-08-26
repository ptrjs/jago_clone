
import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../view/other_view.dart';

class OtherController extends State<OtherView> {
    static late OtherController instance;
    late OtherView view;

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
        
    