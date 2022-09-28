import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:resposive_hvmms/components/spacing.dart';

class BlockWrapper extends StatelessWidget {
  final Widget widget;

  const BlockWrapper(this.widget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveConstraints(
          constraintsWhen: blockWidthConstraints, child: widget),
    );
  }
}
