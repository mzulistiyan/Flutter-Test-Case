import 'package:flutter/material.dart';
import 'package:test_ordo_app/shared/theme.dart';
import 'package:test_ordo_app/widget/custom_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEFEFE),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Made By',
                style: blackTextStyle.copyWith(fontSize: 20),
              ),
              Text(
                'Mohamad Zulistiyan',
                style: blackTextStyle.copyWith(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                width: 250,
                textColor: whiteColor,
                tittle: 'Test 1',
                color: blackColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/home-page');
                },
              ),
              SizedBox(
                height: 27,
              ),
              CustomButton(
                width: 250,
                textColor: whiteColor,
                tittle: 'Test 2',
                color: blackColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/detail-page');
                },
              ),
              SizedBox(
                height: 27,
              ),
              CustomButton(
                width: 250,
                textColor: whiteColor,
                tittle: 'Test 3',
                color: blackColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout-page');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
