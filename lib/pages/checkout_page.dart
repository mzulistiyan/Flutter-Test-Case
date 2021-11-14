import 'package:flutter/material.dart';

import 'package:test_ordo_app/pages/chekout.dart';
import 'package:test_ordo_app/shared/theme.dart';
import 'package:test_ordo_app/widget/custom_bottom_nav.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final items = List<String>.generate(1, (i) => 'Item ${i + 1}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            NeverScrollableScrollPhysics();
            return Dismissible(
              key: Key(item),
              onDismissed: (direction) {},
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 100,
                    decoration: BoxDecoration(color: bluePrimaryColor),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
