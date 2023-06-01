import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/customeButtonNavigator.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget CustomeBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: KeyWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ButtonNavigator(
                iconUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              const ButtonNavigator(
                iconUrl: 'assets/icon_booking.png',
              ),
              const ButtonNavigator(
                iconUrl: 'assets/icon_card.png',
              ),
              const ButtonNavigator(
                iconUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(),
          CustomeBottomNavigation(),
        ],
      ),
    );
  }
}
