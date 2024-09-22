import 'package:flutter/material.dart';
import 'button.dart';
import 'onboarding_model.dart';

class ViewPage extends StatelessWidget {
  final OnboardingModel data;
  final VoidCallback continueAction;

  const ViewPage({
    super.key,
    required this.data,
    required this.continueAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 320,
          width: double.infinity,
          child: Image.asset(data.image, fit: BoxFit.contain),
        ),
        const SizedBox(height: 30),
        Center(
          child: Text(
            data.title,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
        if (data.title == 'Plan, manage, and track tasks')
          Column(
            children: [
              Button(
                text: 'Sign Up',
                backgroundColor: Colors.black,
                textColor: Colors.white,
                action: () {},
              ),
              Button(
                text: 'Login',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                action: () {},
              ),
            ],
          )
        else
          Button(
            text: 'Continue',
            backgroundColor: Colors.black,
            textColor: Colors.white,
            action: continueAction,
          ),
      ],
    );
  }
}
