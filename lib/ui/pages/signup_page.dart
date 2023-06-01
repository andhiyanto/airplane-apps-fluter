import 'package:airplane/ui/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/customeTextFormField.dart';

class signUpPage extends StatelessWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: BlackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget InputSection() {
      Widget nameinput() {
        return const CustomeTextFormField(
          titile: 'Full Name',
          hintText: 'Your Full Name',
        );
      }

      Widget emailinput() {
        return const CustomeTextFormField(
          titile: 'Email Adress',
          hintText: 'Your Email Adress',
        );
      }

      Widget passwordinput() {
        return const CustomeTextFormField(
          titile: 'Password',
          hintText: 'Your Password',
          obscureText: true,
        );
      }

      Widget hobbyinput() {
        return const CustomeTextFormField(
          titile: 'Hobby',
          hintText: 'Your Hobby',
        );
      }

      Widget submitButton() {
        return ButtonCustome(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      Widget tacbutton() {
        return Container(
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Terms and Conditions',
            style: GreyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: KeyWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameinput(),
            emailinput(),
            passwordinput(),
            hobbyinput(),
            submitButton(),
            tacbutton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            InputSection(),
          ],
        ),
      ),
    );
  }
}
