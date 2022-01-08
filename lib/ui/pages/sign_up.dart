import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/text_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

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
        return TextForm(
          title: 'Full Name',
          hitText: 'Your Full Name',
          isActive: false,
          bottom: const EdgeInsets.only(bottom: 20),
          controller: nameController,
        );
      }

      Widget email() {
        return TextForm(
          title: 'Email Address',
          hitText: 'Input Email',
          isActive: false,
          bottom: const EdgeInsets.only(bottom: 20),
          controller: emailController,
        );
      }

      Widget password() {
        return TextForm(
          title: 'Password',
          hitText: 'Input Password',
          isActive: true,
          bottom: const EdgeInsets.only(bottom: 20),
          controller: passwordController,
        );
      }

      Widget hobby() {
        return TextForm(
          title: 'Hobby',
          hitText: 'Your Hobby',
          isActive: false,
          bottom: const EdgeInsets.only(bottom: 30),
          controller: hobbyController,
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
