import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.onPressed,
    required this.isOpen,
  }) : super(key: key);

  final VoidCallback onPressed;
  final bool isOpen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(isOpen ? Icons.arrow_back_ios : Icons.menu),
          ),
          Column(
            children: [
              Text('Location'),
              Row(
                children: [
                  Icon(Icons.location_on, color: primaryGreen),
                  Text('Brazil'),
                ],
              )
            ],
          ),
          CircleAvatar(),
        ],
      ),
    );
  }
}
