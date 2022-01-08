import 'package:airplane_ticketing/cubit/auth_cubit.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

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
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(state.error),
                ),
              );
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ButtonWidget(
              title: 'Sign Up',
              onPressed: () {
                print(passwordController.text);

                context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      hobby: hobbyController.text,
                    );
              },
            );
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
