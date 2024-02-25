import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/widgets/commonContainer.dart';

class Container4 extends StatefulWidget {
  const Container4({Key? key}) : super(key: key);

  @override
  _Container4State createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer4() {
    return CommonContainerMobile(
        'FREE SOME COST',
        'Save cost \nfor you \nand family',
        "NGO Partnerships :\nWe collaborate with a network of reputable NGOs dedicated to various causes. Learn more about our partner organizations and the incredible work they do to create positive change.\n\nJoin Us in Making a Difference :\nReady to be a catalyst for change? Join CompassCare in creating a community of support, compassion, and action. Every pin dropped on our map signifies a step towards a better, more connected world.\n\nGet Started :\n>Explore our interactive map and discover areas where your help is needed.\n>Learn more about our partner NGOs and the causes they champion.\n>Register and become a part of our compassionate community.\n>Together, Let's Pinpoint Hope and Extend a Helping Hand!",
        illustration3,
        false);
  }

  //============== DESKTOP =============

  Widget DesktopContainer4() {
    return CommonContainer(
        'JOIN US IN MAKING A DIFFERENCE',
        'NGO Partnerships :',
        "We collaborate with a network of reputable NGOs dedicated to various causes. Learn more about our partner organizations and the incredible work they do to create positive change.\n\nReady to be a catalyst for change? Join CompassCare in creating a community of support, compassion, and action. Every pin dropped on our map signifies a step towards a better, more connected world.\n\nGet Started :\n>Explore our interactive map and discover areas where your help is needed.\n>Learn more about our partner NGOs and the causes they champion.\n>Register and become a part of our compassionate community.\n>Together, Let's Pinpoint Hope and Extend a Helping Hand!",
        illustration3,
        false);
  }
}
