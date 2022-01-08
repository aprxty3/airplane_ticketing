import 'package:airplane_ticketing/cubit/auth_cubit.dart';
import 'package:airplane_ticketing/theme.dart';
import 'package:airplane_ticketing/ui/widget/button_widget.dart';
import 'package:airplane_ticketing/ui/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 65),
        child: Text(
          'Login to \nyour next journey',
          style: mainStyle,
        ),
      );
    }

    Widget textform() {
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

      Widget button() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/home', (route) => false);
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
              title: 'Sign In',
              onPressed: () {
                print(passwordController.text);

                context.read<AuthCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
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
            email(),
            password(),
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
            onPressed: () {
              Navigator.pushNamed(context, '/sign_up');
            },
            child: Text(
              'Haven\'t a Account? Sign Up Here!',
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
