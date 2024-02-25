import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/widgets/commonContainer.dart';

class Container3 extends StatefulWidget {
  const Container3({Key? key}) : super(key: key);

  @override
  _Container3State createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer3() {
    return CommonContainerMobile(
        'ALWAYS ONLINE',
        'Real-time \nsupport \nwith cloud',
        "\n1. SPOTTING A NEEDY PERSON :\nIf you come across someone in need, whether it's a person experiencing homelessness, a family facing financial struggles, or anyone requiring urgent help, mark their location on our interactive map.\n2. PINPOINT THE LOCATION :\nUse our user-friendly interface to drop a pin on the exact location where you encountered someone in need. This ensures that NGOs can quickly and efficiently locate and assist them.\n3. CONNECT WITH NGO'S:\nOnce a location is pinned, our system notifies registered NGOs operating in the area. NGOs can then assess the situation and take appropriate action to provide assistance.",
        illustration2,
        false);
  }

  //============== DESKTOP =============

  Widget DesktopContainer3() {
    return CommonContainer(
        'Empowering Change, One Pin at a Time',
        'How it Works',
        "\n1. SPOTTING A NEEDY PERSON :\nIf you come across someone in need, whether it's a person experiencing homelessness, a family facing financial struggles, or anyone requiring urgent help, mark their location on our interactive map.\n2. PINPOINT THE LOCATION :\nUse our user-friendly interface to drop a pin on the exact location where you encountered someone in need. This ensures that NGOs can quickly and efficiently locate and assist them.\n3. CONNECT WITH NGO'S:\nOnce a location is pinned, our system notifies registered NGOs operating in the area. NGOs can then assess the situation and take appropriate action to provide assistance.",
        illustration2,
        false);
  }
}
