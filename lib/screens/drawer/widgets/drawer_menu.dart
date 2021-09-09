import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : secoundGreen,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : secoundGreen,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
