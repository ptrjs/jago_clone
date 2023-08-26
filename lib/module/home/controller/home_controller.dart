import 'package:flutter/material.dart';
import 'package:jago_clone/core.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  late ScrollController scrollController;
  bool isScrolled = false;

  @override
  void initState() {
    // instance = this;
    super.initState();
    scrollController = ScrollController()..addListener(onScroll);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void onScroll() {
    double offset = scrollController.offset;
    print("Scroll offset: $offset");
    isScrolled = offset > 5;
    if (offset == 0) {
      isScrolled = false;
    }
    setState(() {});
  }
}
