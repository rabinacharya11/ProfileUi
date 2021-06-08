import 'package:assignment/models/weather_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CurrentDayWidget extends StatelessWidget {
  const CurrentDayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.watch<WeatherData>().data);
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 8.0,
        ),
        child: Consumer<WeatherData>(
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 80,
                      width: 110,
                      child: Image.asset('assets/images/rain.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '${context.watch<WeatherData>().temp}',
                      style: TextStyle(fontSize: 70),
                    ),
                  ],
                ),
                //TODO : here will be the details of todays forcast
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${context.watch<WeatherData>().dayCondition}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${context.watch<WeatherData>().minMaxTemp}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      context.watch<WeatherData>().wind,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        )
        //TODO:Here will will the current day data

        );
  }
}
