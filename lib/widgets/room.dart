import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  const Room({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: 200,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/livingroom');
              },
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const CircleAvatar(
                      backgroundColor: Color(0xFFb56eea),
                      child: Icon(
                        Icons.store,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: const Text(
                            'Living Room2',
                            style: TextStyle(
                                color: Color.fromARGB(255, 132, 163, 214)),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.thermostat,
                              color: Color(0xFFb56eea),
                            ),
                            Text('36°c',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 132, 163, 214))),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.water_drop,
                              color: Color(0xFFb56eea),
                            ),
                            Text('74%',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 132, 163, 214)))
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 7),
            width: 200,
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const CircleAvatar(
                    backgroundColor: Color(0xFFb56eea),
                    child: Icon(
                      Icons.bathtub,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        child: const Text(
                          'Bathroom',
                          style: TextStyle(
                              color: Color.fromARGB(255, 132, 163, 214)),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.thermostat,
                            color: Color(0xFFb56eea),
                          ),
                          Text('36°c',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 132, 163, 214))),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.water_drop,
                            color: Color(0xFFb56eea),
                          ),
                          Text('74%',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 132, 163, 214)))
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
