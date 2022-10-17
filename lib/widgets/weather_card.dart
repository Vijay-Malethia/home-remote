import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        // alignment: Alignment.center,
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '24°c',
                        style: TextStyle(
                            color: Color(0xFFa195ba),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'avg house temp',
                        style: TextStyle(
                            color: Color(0xFFdbdee4),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '36°c',
                        style: TextStyle(
                            color: Color(0xFFa195ba),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'outside temp',
                        style: TextStyle(
                            color: Color(0xFFdbdee4),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '69%',
                      style: TextStyle(
                          color: Color(0xFFa195ba),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'humidity',
                      style: TextStyle(
                          color: Color(0xFFdbdee4),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '8',
                        style: TextStyle(
                            color: Color(0xFFa195ba),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'device on',
                        style: TextStyle(
                            color: Color(0xFFdbdee4),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
