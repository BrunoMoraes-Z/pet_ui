import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        maxLines: 1,
        style: TextStyle(
          color: primaryGreen,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 40),
          hintText: 'Search pet to adopt',
          prefixIcon: Icon(
            Icons.search,
            color: secoundGreen,
          ),
          suffixIcon: InkWell(
            onTap: onTap,
            child: Icon(
              Icons.settings,
              color: secoundGreen,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
