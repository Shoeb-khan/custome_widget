library custome_widget;

import 'package:flutter/material.dart';


class CustomeWidget extends StatelessWidget{

  final int itemcount;
  final IndexedWidgetBuilder itembuilder;
  final double? spacing;
  final double? runSpacing;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final bool reverse;
  final ScrollController? controller;
  final WrapAlignment? wrapAlignment;
  final WrapCrossAlignment? crossAxisAlignment;


  CustomeWidget({required this.itemcount,required this.itembuilder, this.spacing, this.runSpacing, this.padding, this.physics, this.reverse = false, this.controller, this.wrapAlignment, this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: physics,
        padding: padding ?? const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        reverse: reverse,
        controller: controller,
        child: Wrap(
          spacing: spacing ?? 8,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          direction: Axis.horizontal,
          runAlignment: wrapAlignment ?? WrapAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? WrapCrossAlignment.start,
          runSpacing: runSpacing ?? 8,
          children:
          List.generate(itemcount, (index) => itembuilder(context, index)),
        ),
      ),
    );
  }
}