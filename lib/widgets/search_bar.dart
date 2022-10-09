import 'package:chotdat/color.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        focusColor: Colors.blueAccent,
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Tìm kiếm",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
          size: 30,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(width: 1, color: Styles.strokeColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(width: 1, color: Styles.strokeColor),
        ),
        contentPadding: EdgeInsets.only(bottom: 8.0, top: 8.0),
      ),
    );
  }
}
