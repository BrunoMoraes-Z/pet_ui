import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_ui/configuration.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    Key? key,
    required this.backgroundColor,
    required this.animalImage,
    required this.onTap,
    required this.tag,
    required this.animalName,
    required this.animalRace,
    required this.distance,
    required this.animalAge,
    this.isFemale = true,
  }) : super(key: key);

  final Color backgroundColor;
  final String animalImage, animalName, animalRace;
  final VoidCallback onTap;
  final int tag;
  final double distance, animalAge;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: shadowList,
                    ),
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Align(
                    child: Hero(
                      tag: tag,
                      child: Image.asset(animalImage),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 60, bottom: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          animalName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          isFemale
                              ? FontAwesomeIcons.venus
                              : FontAwesomeIcons.mars,
                          color: secoundGreen,
                        ),
                      ],
                    ),
                    Text(
                      animalRace,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('$animalAge years old'),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: secoundGreen,
                        ),
                        SizedBox(width: 10),
                        Text('Distance $distance km'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
