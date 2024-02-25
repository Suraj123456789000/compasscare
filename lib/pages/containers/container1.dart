import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/utils/styles.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Give Back  \nto \nSociety',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to connect the needy to right NGO',
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Color.fromARGB(255, 20, 20, 20), fontSize: 20),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                label: Text(
                  'Click to pin point the locaion',
                  style: TextStyle(
                      color: Color.fromARGB(255, 243, 239, 239), fontSize: 20),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '',
            style:
                TextStyle(color: Color.fromARGB(255, 19, 18, 18), fontSize: 16),
          )
        ],
      ),
    );
  }

  //============== DESKTOP =============

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Give Back \nto \nSociety',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Helps you to connect the needy to right NGO',
                  style: TextStyle(
                      color: Color.fromARGB(255, 17, 17, 17), fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          onPressed: () {},
                          icon: Icon(Icons.arrow_drop_down),
                          label: Text(
                            'Click to pin point the locaion',
                            style: TextStyle(
                                color: Color.fromARGB(255, 243, 239, 239),
                                fontSize: 20),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                          color: Color.fromARGB(255, 12, 12, 12), fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          )),
          Expanded(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(illustration1), fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
