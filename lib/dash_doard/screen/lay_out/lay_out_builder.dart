import 'package:flutter/material.dart';

class AppLayOutBuilder extends StatelessWidget {
  const AppLayOutBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final WidgetBuilder mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth <= 700) {
          return mobile(context);
        } else if (constraints.maxWidth <= 1000) {
          return tablet(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
