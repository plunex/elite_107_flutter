import 'package:flutter/material.dart';

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
                backgroundColor: Color(0xFF5A5F87),
                text: 'Continue',
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomButton(
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

class CustomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const CustomButton({
    Key key,
    this.backgroundColor,
    this.borderColor,
    this.text,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
