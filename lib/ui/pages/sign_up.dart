import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/text_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 65),
        child: Text(
          'Join us and get \nyour next journey',
          style: mainStyle,
        ),
      );
    }

    Widget textform() {
      Widget name() {
        return const TextForm(
          title: 'Full Name',
          hitText: 'Your Full Name',
          isActive: false,
          bottom: EdgeInsets.only(bottom: 20),
        );
      }

      Widget email() {
        return const TextForm(
          title: 'Email Address',
          hitText: 'Input Email',
          isActive: false,
          bottom: EdgeInsets.only(bottom: 20),
        );
      }

      Widget password() {
        return const TextForm(
          title: 'Password',
          hitText: 'Input Password',
          isActive: true,
          bottom: EdgeInsets.only(bottom: 20),
        );
      }

      Widget hobby() {
        return const TextForm(
          title: 'Hobby',
          hitText: 'Your Hobby',
          isActive: false,
          bottom: EdgeInsets.only(bottom: 30),
        );
      }

      Widget button() {
        return ButtonWidget(
          title: 'Sign Up',
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: sWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            name(),
            email(),
            password(),
            hobby(),
            button(),
          ],
        ),
      );
    }

    Widget terms() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Terms and Conditions',
              style: shadowStyle,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          title(),
          textform(),
          terms(),
        ],
      ),
    );
  }
}
