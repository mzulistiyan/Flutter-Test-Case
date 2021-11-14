import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_ordo_app/shared/theme.dart';
import 'package:test_ordo_app/widget/custom_bottom_nav.dart';
import 'package:test_ordo_app/widget/custom_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    'assets/banner1.png',
    'assets/banner2.png',
    'assets/banner3.png',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 230,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xffF0F0F0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Image.asset(
                    'assets/Search.png',
                    width: 13,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: 'Cari dengan mengetik barang',
                          hintStyle: greyTextStyle.copyWith(fontSize: 10)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: bluePrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/options.png',
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: goldColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/bag.png',
              ),
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: redColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                'assets/notifications_none.png',
              ),
            ),
          ],
        ),
      );
    }

    Widget indicator(index) {
      return Container(
        width: currentIndex == index ? 13 : 16,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? blueSecoundColor : bluePrimaryColor,
        ),
      );
    }

    Widget banner() {
      int index = -1;
      return Container(
        height: 200,
        child: Column(
          children: [
            CarouselSlider(
              items: images
                  .map(
                    (image) => Image.asset(image),
                  )
                  .toList(),
              options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                viewportFraction: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList(),
            )
          ],
        ),
      );
    }

    Widget contentCard() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image6.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image7.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xff64A1F4)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image8.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image5.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image2.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: goldColor),
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image3.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image4.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
                CustomCard(
                    name: 'Speaker',
                    diskon: 15,
                    image: 'assets/image1.png',
                    hargaAsli: 'Rp 6.000',
                    hargaDiskon: 'Rp 8000',
                    backgroundColor: Color(0xffE1F3D9)),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: CustomBottomNav(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          children: [
            Column(
              children: [
                header(),
                banner(),
                contentCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
