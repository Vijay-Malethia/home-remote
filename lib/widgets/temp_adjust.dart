import 'package:flutter/material.dart';

class TempAdjust extends StatelessWidget {
  const TempAdjust({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                width: 70,
                height: 68,
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
                    child: const Icon(
                      Icons.ac_unit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Cool',
                style: TextStyle(
                    color: Color(0xFF9083ad),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: 70,
                height: 68,
                child: const Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Icon(
                    Icons.light_mode,
                    color: Color.fromARGB(255, 183, 203, 230),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Heat',
                style: TextStyle(
                    color: Color(0xFF9083ad),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: 70,
                height: 68,
                child: const Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Icon(
                    Icons.wind_power,
                    color: Color.fromARGB(255, 183, 203, 230),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Fan',
                style: TextStyle(
                    color: Color(0xFF9083ad),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: 70,
                height: 68,
                child: const Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Icon(
                    Icons.hdr_auto,
                    color: Color.fromARGB(255, 183, 203, 230),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Auto',
                style: TextStyle(
                    color: Color(0xFF9083ad),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                width: 70,
                height: 68,
                child: const Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Icon(
                    Icons.hdr_auto,
                    color: Color.fromARGB(255, 183, 203, 230),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Auto',
                style: TextStyle(
                    color: Color(0xFF9083ad),
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
