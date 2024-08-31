import 'package:flutter/material.dart';
import 'package:responsiveadaptive/dash_doard/screen/lay_out/responsive_desktop_layout.dart';

import '../widget/responsive_tablet.dart';
import '../widget/resposnive_mobile.dart';
import 'lay_out/lay_out_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayOutBuilder(
      mobile: (context) => const ResposniveMobile(),
      tablet: (context) => const ResponsiveTablet(),
      desktop: (context) => const ResponsiveDesktopLayout(),
    );
  }
}
