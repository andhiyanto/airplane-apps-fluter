import 'package:airplane/ui/pages/Choose_Seat_page.dart';
import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:airplane/ui/widgets/interest.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/photo_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BackGroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget CustomeShadow() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                KeyWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget TitleContet() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 108,
              height: 24,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),
            //title and rating
            Container(
              margin: EdgeInsets.only(top: 270),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: WhiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Tangerang',
                          style: WhiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: const EdgeInsets.only(right: 2, bottom: 3),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_star.png'),
                          ),
                        ),
                      ),
                      Text(
                        ('4.7'),
                        style: WhiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultMargin),
                color: KeyWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: BlackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: BlackTextStyle.copyWith(
                        fontSize: 14, fontWeight: reguler, height: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Photos',
                    style: BlackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      PhotoItem(
                        ImageUrl: 'assets/image_destination1.png',
                      ),
                      PhotoItem(
                        ImageUrl: 'assets/image_destination2.png',
                      ),
                      PhotoItem(
                        ImageUrl: 'assets/image_destination3.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Interests',
                    style: BlackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      InterstWidget(text: 'Kids Park'),
                      InterstWidget(text: 'Honor Bridge')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InterstWidget(text: 'Kids Park'),
                      InterstWidget(text: 'Honor Bridge')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 2.500.000",
                          style: BlackTextStyle.copyWith(
                              fontSize: 18, fontWeight: bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "per orang",
                          style: GreyTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                  ButtonCustome(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeat(),
                        ),
                      );
                    },
                    width: 170,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackGroundImage(),
            CustomeShadow(),
            TitleContet(),
          ],
        ),
      ),
    );
  }
}
