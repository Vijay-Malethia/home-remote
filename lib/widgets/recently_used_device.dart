import 'package:flutter/material.dart';

class RecentlyDevices extends StatelessWidget {
  const RecentlyDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: 150,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.satellite_alt,
                        color: Color(0xFFbe5c8f8),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.offline_bolt,
                        color: Color(0xFFe5c8f8),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Living room\nHAVC',
                      style:
                          TextStyle(color: Color.fromARGB(255, 132, 163, 214)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: 150,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.offline_bolt,
                      color: Color(0xFFe5c8f8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Bedroom\nSmooth lights',
                      style:
                          TextStyle(color: Color.fromARGB(255, 132, 163, 214)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: 160,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.offline_bolt,
                      color: Color(0xFFe5c8f8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Bedroom\nSmooth lights',
                      style:
                          TextStyle(color: Color.fromARGB(255, 132, 163, 214)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
