import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({
    Key? key,
    required this.onTapSettings,
    required this.onTapLogout,
  }) : super(key: key);

  final VoidCallback onTapSettings, onTapLogout;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTapSettings,
          child: Row(
            children: [
              Icon(
                Icons.settings,
                color: secoundGreen,
              ),
              SizedBox(width: 10),
              Text(
                'Settings',
                style: TextStyle(
                  color: secoundGreen,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
        InkWell(
          onTap: onTapLogout,
          child: Row(
            children: [
              Container(
                width: 1,
                height: 20,
                color: secoundGreen,
              ),
              SizedBox(width: 10),
              Text(
                'Log out',
                style: TextStyle(
                  color: secoundGreen,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
