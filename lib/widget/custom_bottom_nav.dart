import 'package:flutter/material.dart';
import 'package:test_ordo_app/shared/theme.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/assignment.png',
            width: 25,
            height: 25,
          ),
          Image.asset(
            'assets/swap_horiz.png',
            width: 25,
            height: 25,
          ),
          Image.asset(
            'assets/home_alt_fill.png',
            width: 25,
            height: 25,
          ),
          Image.asset(
            'assets/assessment.png',
            width: 25,
            height: 25,
          ),
          Image.asset(
            'assets/person.png',
            width: 25,
            height: 25,
          ),
        ],
      ),
    );
  }
}
