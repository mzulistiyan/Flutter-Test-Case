import 'package:flutter/material.dart';
import 'package:test_ordo_app/pages/checkout_page.dart';
import 'package:test_ordo_app/pages/chekout.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CheckoutPage());
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Chekout());
  }
}
