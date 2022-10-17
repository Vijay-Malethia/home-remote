import 'package:app_ui/widgets/temp_adjust.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  double _currentSliderValue = 50;
  double tempHigh = 0;
  void increaseTemp() {
    if (tempHigh > 40) {
      return;
    }
    setState(() {
      tempHigh++;
    });
  }

  void decreaseTemp() {
    setState(() {
      tempHigh--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFf5f5f5),
      child: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 17),
            alignment: Alignment.topLeft,
            child: GestureDetector(
                onTap: (() {
                  Navigator.pop(context);
                }),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                )),
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'Living room',
                style: TextStyle(
                    color: Color(0xFF8273a2),
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                width: 120,
              ),
              Text('Edit',
                  style: TextStyle(
                      color: Color(0xFFc3d1e6), fontWeight: FontWeight.bold))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 65,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 235, 235, 235)))),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20, right: 2, bottom: 20),
                  decoration: const BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Colors.blue, width: 1),
                  )),
                  child: const Icon(
                    Icons.satellite_alt,
                    size: 35,
                    color: Color(0xFFb4b3f3),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(35, 20, 20, 20),
                  child: const Icon(
                    Icons.lightbulb_outline,
                    size: 35,
                    color: Color(0xFFdce5f1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 20, 20, 20),
                  child: const Icon(
                    Icons.park_outlined,
                    size: 35,
                    color: Color(0xFFdce5f1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 20, 20, 20),
                  child: const Icon(
                    Icons.ondemand_video,
                    size: 35,
                    color: Color(0xFFdce5f1),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 20, 20, 20),
                  child: const Icon(
                    Icons.volume_up,
                    size: 35,
                    color: Color(0xFFdce5f1),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: decreaseTemp,
                  child: const Icon(
                    Icons.remove,
                    size: 40,
                    color: Color(0XFFb290ee),
                  ),
                ),
                Stack(children: [
                  Container(
                    height: 240,
                    width: 240,
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(minimum: 0, maximum: 40, ranges: <GaugeRange>[
                        GaugeRange(
                            startValue: 0,
                            endValue: 40,
                            color: const Color.fromARGB(255, 218, 218, 218),
                            startWidth: 10,
                            endWidth: 10),
                        GaugeRange(
                          startValue: 0,
                          endValue: tempHigh.toDouble(),
                          color: const Color(0xFFf885b0),
                        ),
                      ], annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            widget: Container(
                                child: Text("${tempHigh.toString()}°c",
                                    style: const TextStyle(
                                        color: Color(0xFF9083ad),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))),
                            angle: 0,
                            positionFactor: 0.0)
                      ])
                    ]),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(top: 190, left: 75),
                    child: Column(
                      children: const [
                        CircleAvatar(
                            backgroundColor: Color(0xFFba6cea),
                            child: Icon(
                              Icons.power_settings_new,
                              color: Colors.white,
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'click to turn off',
                          style: TextStyle(color: Color(0xFF7a7ce9)),
                        ),
                      ],
                    ),
                  )
                ]),
                GestureDetector(
                  onTap: increaseTemp,
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Color(0XFFb290ee),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: EdgeInsets.all(0),
              margin: const EdgeInsets.symmetric(horizontal: 35),
              child: const TempAdjust()),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 130,
              width: 320,
              margin: const EdgeInsets.symmetric(horizontal: 35),

              // color: Colors.amber,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 25),
                        child: const Text('Fan speed',
                            style: TextStyle(
                                color: Color(0xFF9083ad),
                                fontWeight: FontWeight.w600,
                                fontSize: 16))),
                    Slider(
                      value: _currentSliderValue,
                      max: 100,
                      divisions: 5,
                      activeColor: const Color(0xFFf271b5),
                      thumbColor: const Color(0xFF7d80e9),
                      inactiveColor: Colors.grey[200],
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('low',
                              style: TextStyle(
                                color: Color(0xFF9083ad),
                                fontWeight: FontWeight.w700,
                              )),
                          Text('mid',
                              style: TextStyle(
                                color: Color(0xFF9083ad),
                                fontWeight: FontWeight.w700,
                              )),
                          Text('high',
                              style: TextStyle(
                                color: Color(0xFF9083ad),
                                fontWeight: FontWeight.w700,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
//nothing to commit