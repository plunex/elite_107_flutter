import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayingScreen extends StatefulWidget {
  @override
  _PlayingScreenState createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  String getTimeStringFromDouble(double value) {
    if (value < 0) return 'Invalid Value';
    int flooredValue = value.floor();
    double decimalValue = value - flooredValue;
    String hourValue = getHourString(flooredValue);
    String minuteString = getMinuteString(decimalValue);

    return '$hourValue:$minuteString';
  }

  String getMinuteString(double decimalValue) {
    return '${(decimalValue * 60).toInt()}'.padLeft(2, '0');
  }

  String getHourString(int flooredValue) {
    return '${flooredValue % 24}'.padLeft(2, '0');
  }

  double audioValue = 0.5;

  @override
  Widget build(BuildContext context) {
    // audioValue += 0.05;
    return Scaffold(
      backgroundColor: Color(0xFF31313A),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF31313A),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3695,
                  width: MediaQuery.of(context).size.width * 0.6027,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.3695,
                      width: MediaQuery.of(context).size.width * 0.6027,
                      image: AssetImage('assets/images/book2_playing.png'),
                    ),
                  ),
                ),
                Container(
                  height: 24,
                ),
                Text(
                  'The Alchemist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 8,
                ),
                Text(
                  'Paulo Coehlho',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        getTimeStringFromDouble(audioValue),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        getTimeStringFromDouble(3.5),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Slider.adaptive(
                  value: audioValue,
                  min: 0.0,
                  max: 3.5,
                  label: 'jj',
                  activeColor: Color(0xFFEE5C24),
                  onChanged: (value) {
                    setState(() {
                      audioValue = value;
                      print(value);
                    });
                  },
                ),
                Container(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shuffle,
                        color: Colors.white,
                        size: 30,
                      ),
                      Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 40,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 65,
                        ),
                        onTap: () {},
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 40,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 91,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
