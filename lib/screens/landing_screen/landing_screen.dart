import 'package:elite_107/screens/playing_screen/playing_screen.dart';
import 'package:flutter/material.dart';

import 'components/custom_button.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   height: MediaQuery.of(context).size.height / 3,
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.red,
            // ),
            Image(
              image: AssetImage('assets/images/listen.png'),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.height,
            ),
            Text(
              'The Best Place To Read',
              style: TextStyle(
                color: Color(0xFF2F2D52),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Listen and read your favourite books at the comfort of your home',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0.5,
                  color: Color(0xB32F2D52),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PlayingScreen();
                      },
                    ),
                  );
                },
                backgroundColor: Color(0xFF5A5F87),
                text: 'Continue',
                textColor: Colors.white,
                borderColor: null,
              ),
            ),
            Container(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
                onTap: () {},
                backgroundColor: Colors.white,
                borderColor: Color(0xFF5A5F87),
                text: 'Create an account',
                textColor: Color(0xFF5A5F87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
