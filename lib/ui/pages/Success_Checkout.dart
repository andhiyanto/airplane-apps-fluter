import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SuccsesCheckout extends StatelessWidget {
  const SuccsesCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 80),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_succes.png"),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style:
                  BlackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
            ),
            SizedBox(
              height: 19,
            ),
            Text(
              'Are you ready to explore the new \nworld of experiences?',
              style: GreyTextStyle.copyWith(fontSize: 16, fontWeight: light),
              textAlign: TextAlign.center,
            ),
            ButtonCustome(
              title: 'My Bookings',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/mainpage', (route) => false);
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
