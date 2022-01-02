import 'package:flutter/material.dart';
import 'package:flutter_smart_iot_home/control_button.dart';
import 'package:flutter_smart_iot_home/constants.dart';

class LandingScreenBody extends StatefulWidget {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.03),
          Center(
            child: Text(
              'Smart IoT  Home',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Center(
            child: Text(
              'Tap on the icons to apply.',
              textAlign: TextAlign.center,
              style: TextStyle(color: kDarkGreyColor, fontSize: 18),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ControlButton(
                size: size,
                title: 'Bilik\nHenna',
                icon: Icons.settings_outlined,
              ),
              ControlButton(
                size: size,
                title: 'Plug 3\nPatio ',
                icon: Icons.grain,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ControlButton(
                size: size,
                title: 'Parking\nLight',
                icon: Icons.opacity,
              ),
              ControlButton(
                size: size,
                title: 'Gate Light\nSwitch',
                icon: Icons.highlight,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ControlButton(
                size: size,
                title: 'Bridge\nControl ',
                icon: Icons.ac_unit,
              ),
              ControlButton(
                size: size,
                title: 'Plug\nAmmar',
                icon: Icons.vpn_key,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
