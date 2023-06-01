import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: PrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: WhiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Kezia Anne',
                        style: WhiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style:
                      WhiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: WhiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(
              'IDR 280.000.000',
              style: WhiteTextStyle.copyWith(fontSize: 26, fontWeight: medium),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: BlackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that \nyou can buy a flight ticket',
          style: GreyTextStyle.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget nextButton() {
      return ButtonCustome(
          title: 'Start Fly Now',
          width: 220,
          margin: const EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.pushNamed(context, '/mainpage');
          });
    }

    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            nextButton(),
          ],
        ),
      ),
    );
  }
}
