import 'package:flutter/material.dart';  

//加了這個CanScroll(Widget)打開鍵盤就可以滑了
class CanScroll extends StatefulWidget {

  final Widget input;
  const CanScroll(this.input, {super.key});
  @override
  _ScrollableState createState() => _ScrollableState();
}

class _ScrollableState extends State<CanScroll> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:widget.input,
        )
      ],
    );
  }
}