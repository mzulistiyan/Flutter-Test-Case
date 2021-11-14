import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_ordo_app/pages/checkout_page.dart';
import 'package:test_ordo_app/shared/theme.dart';
import 'package:test_ordo_app/widget/custom_button.dart';

class Chekout extends StatelessWidget {
  const Chekout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 70),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_back.png',
                  ),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'PRODUK DETAIL',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: blueSecoundColor),
            ),
          ],
        ),
      );
    }

    Widget catatan() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        padding: EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Catatan Pesanan',
                style: GoogleFonts.poppins(
                    color: Color(0xff808080), fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextFormField(
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  hintText: "Ketik disini...",
                  hintStyle: greyTextStyle,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget detailPembayaran() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Pembayaran',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Gucci',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '(Qty.1)',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 75.000',
                        style: blackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tas Eiger',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '(Qty.1)',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 75.000',
                        style: blackTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ongkos Kirim',
                        style: blackTextStyle,
                      ),
                      Text(
                        'Rp 10.000',
                        style: blackTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15),
              height: 1,
              decoration: BoxDecoration(
                color: Color(0xffE6E6E6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub Total',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
                Text(
                  'Rp 450.000',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              width: double.infinity,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: bluePrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Waktu Pengantaran',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: double.infinity,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: bluePrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alamat Pengiriman',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: greyColor,
                    offset: Offset(0.0, 1.0),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.',
                    style: greenTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                  textColor: whiteColor,
                  tittle: 'Bayar Sekarang',
                  color: bluePrimaryColor,
                  onPressed: () {}),
            )
          ],
        ),
      );
    }

    Widget barang() {
      return Container(
        child: CheckoutPage(),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: header(),
          ),
          SliverToBoxAdapter(
            child: catatan(),
          ),
          SliverToBoxAdapter(
            child: detailPembayaran(),
          ),
        ],
      ),
    );
  }
}
