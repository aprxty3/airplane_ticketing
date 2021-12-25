import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'Join us and get \nyour next journey',
          style: mainStyle,
        ),
      );
    }

    Widget textform() {
      Widget name() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
                style: signStyle,
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: sPrimaryColor,
                decoration: InputDecoration(
                  hintText: 'Your Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget email() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email Address',
                style: signStyle,
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: sPrimaryColor,
                decoration: InputDecoration(
                  hintText: 'Input Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget password() {
        return Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: signStyle,
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: sPrimaryColor,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Input Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget hobby() {
        return Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hobby',
                style: signStyle,
              ),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: sPrimaryColor,
                decoration: InputDecoration(
                  hintText: 'Your Hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        );
      }

      Widget button() {
        return ButtonWidget(
          title: 'Sign Up',
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 10),
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
        margin: const EdgeInsets.only(bottom: 70),
        child: Center(
          child: InkWell(
            onTap: () {},
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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            textform(),
            terms(),
          ],
        ),
      ),
    );
  }
}
