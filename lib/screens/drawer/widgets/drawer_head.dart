import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bruno Moraes',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Active status',
              style: TextStyle(
                color: secoundGreen,
                fontSize: 13,
              ),
            )
          ],
        )
      ],
    );
  }
}
