import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:inspace/src/app/components/form_button/form_button.dart';
import 'package:inspace/src/app/components/form_input/form_input.dart';
import 'package:inspace/src/app/modules/home_page/home_page.dart';
import 'package:inspace/src/utils/export.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: '',
        body: Column(
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 16),
            const FormInput(
                label: eMail,
                keyboardType: TextInputType.emailAddress,
                obscureText: false),
            const SizedBox(height: 16),
            const FormInput(
                label: password,
                keyboardType: TextInputType.text,
                obscureText: true),
            const SizedBox(height: 32),
            FormButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              buttonText: login,
            ),
            const SizedBox(height: 16)
          ],
        ),
        showAppBar: false);
  }
}
