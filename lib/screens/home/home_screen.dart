import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';
import 'package:pet_ui/screens/detail/detail_screen.dart';
import 'package:pet_ui/screens/home/widgets/animal_card.dart';
import 'package:pet_ui/screens/home/widgets/home_header.dart';
import 'package:pet_ui/screens/home/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isOpen ? 40 : 0),
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          HomeHeader(
            isOpen: isOpen,
            onPressed: () {
              setState(() {
                if (isOpen) {
                  xOffset = 0;
                  yOffset = 0;
                  scaleFactor = 1;
                  isOpen = false;
                } else {
                  xOffset = 230;
                  yOffset = 150;
                  scaleFactor = 0.6;
                  isOpen = true;
                }
              });
            },
          ),
          SearchBar(
            onTap: () {},
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              SizedBox(width: 20),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: index == 0
                                            ? primaryGreen
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: shadowList,
                                      ),
                                      child: Image.asset(
                                        categories[index]['iconPath'],
                                        height: 50,
                                        width: 50,
                                        color: index == 0
                                            ? Colors.white70
                                            : Colors.grey[700],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      categories[index]['name'],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              index == (categories.length - 1)
                                  ? SizedBox(width: 20)
                                  : Container(),
                            ],
                          );
                        },
                      ),
                    ),
                    AnimalCard(
                      tag: 1,
                      backgroundColor: Colors.blueGrey[300]!,
                      animalImage: 'images/pet-cat2.png',
                      animalName: 'Sola',
                      animalRace: 'Abyssion cat',
                      animalAge: 2,
                      distance: 3.6,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              tag: 1,
                              animalImage: 'images/pet-cat2.png',
                              backgroundColor: Colors.blueGrey[300]!,
                              publishDescription:
                                  "My job requires moving to another country. I don't have the opportunity to take the cat with me. I am looking for good people who wil shelter my Sola.",
                              animalAge: 2,
                              animalName: 'Sola',
                              animalRace: 'Abyssion cat',
                              ownerName: 'Bruno Moraes',
                              publishDate: DateTime(2021, 9, 9),
                              onFavorite: () {},
                              onTap: () {},
                            ),
                          ),
                        );
                      },
                    ),
                    AnimalCard(
                      tag: 2,
                      backgroundColor: Colors.orange[100]!,
                      animalImage: 'images/pet-cat1.png',
                      animalName: 'Orion',
                      animalRace: 'Abyssion cat',
                      animalAge: 2.6,
                      distance: 7.3,
                      isFemale: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(
                              tag: 2,
                              animalImage: 'images/pet-cat1.png',
                              backgroundColor: Colors.orange[100]!,
                              publishDescription:
                                  "My job requires moving to another country. I don't have the opportunity to take the cat with me. I am looking for good people who wil shelter my Sola.",
                              animalAge: 2.6,
                              animalName: 'Orion',
                              animalRace: 'Abyssion cat',
                              ownerName: 'Rafael Gomez',
                              isFemale: false,
                              publishDate: DateTime(2021, 1, 16),
                              onFavorite: () {},
                              onTap: () {},
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: isOpen ? 20 : 0,
          ),
        ],
      ),
    );
  }
}
