import 'package:flutter/material.dart';

import '../const/colors.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
      child: Container(
        //height: 100,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColor.placeholderBg,
        ),

        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                  Icons.search
              ),
              hintText: 'Search',
              contentPadding: const EdgeInsets.only(
                top:15.0,
              )
          ),

        ),
      ),
    );
  }
}
