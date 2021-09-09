import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/screens/drawer/widgets/drawer_footer.dart';
import 'package:pet_ui/screens/drawer/widgets/drawer_head.dart';
import 'package:pet_ui/screens/drawer/widgets/drawer_menu.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerHead(),
          Container(
            child: Column(
              children: [
                DrawerMenu(
                  icon: FontAwesomeIcons.paw,
                  title: 'Adoption',
                  isSelected: true,
                  onTap: () {},
                ),
                DrawerMenu(
                  icon: FontAwesomeIcons.handHoldingUsd,
                  title: 'Donation',
                  onTap: () {},
                ),
                DrawerMenu(
                  icon: FontAwesomeIcons.plus,
                  title: 'Add pet',
                  onTap: () {},
                ),
                DrawerMenu(
                  icon: Icons.favorite,
                  title: 'Favorites',
                  onTap: () {},
                ),
                DrawerMenu(
                  icon: Icons.mail,
                  title: 'Messages',
                  onTap: () {},
                ),
                DrawerMenu(
                  icon: FontAwesomeIcons.userAlt,
                  title: 'Profile',
                  onTap: () {},
                ),
              ],
            ),
          ),
          DrawerFooter(
            onTapSettings: () {
              print('settings');
            },
            onTapLogout: () {
              print('logout');
            },
          ),
        ],
      ),
    );
  }
}
