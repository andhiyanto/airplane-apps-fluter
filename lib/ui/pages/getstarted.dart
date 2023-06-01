import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/customeButton.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image_get_started.png'),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Fly Like a Bird',
                style:
                    WhiteTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 10,
              ),
              Text(
                'Explore new world with us and let\n yourself get an amazing experiences',
                style: WhiteTextStyle.copyWith(fontWeight: light, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              ButtonCustome(
                title: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                },
                margin: EdgeInsets.only(top: 50, bottom: 80),
                width: 220,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
