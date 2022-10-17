import 'package:flutter/material.dart';

class RoutineScroll extends StatelessWidget {
  const RoutineScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 85,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              width: 100,
              child: Card(
                // color: const Color.fromARGB(255, 241, 188, 207),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(colors: <Color>[
                      Color(0xFFeb5eba),
                      Color(0xFFf989af),
                    ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.sunny,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Morning',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              width: 100,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.privacy_tip,
                      color: Color(0xFF8879e9),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "I'm out",
                      style: TextStyle(
                        color: Color.fromARGB(255, 174, 189, 211),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              width: 100,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.home,
                      color: Color(0xFF8879e9),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Color.fromARGB(255, 174, 189, 211),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              width: 100,
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.nightlight,
                      color: Color(0xFF8879e9),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Night',
                      style: TextStyle(
                        color: Color.fromARGB(255, 174, 189, 211),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
