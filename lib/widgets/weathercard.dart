import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherCard extends StatelessWidget {
  WeatherCard({Key? key, required this.data}) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    String currentDay = DateFormat('EEEE').format(DateTime.now());
    int currentTime = int.parse(DateFormat('H').format(DateTime.now()));
    print(currentTime);
    if (currentDay == data['day']) {}

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
        child: Card(
          color: data['day'] == currentDay
              ? Colors.blue
              : Colors.white, //TODO: Change the card color of the courrent day
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data['day'],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
//Humidity part

                    Image.asset(
                      'assets/images/humidity.png',
                      height: 20,
                      width: 20,
                    ),
                    Text(
                      '${data['humidity']}',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    //Day or night part
                    currentTime >= 18 && currentTime <= 6
                        ? Image.asset(
                            'assets/images/fair_night.png',
                            height: 25,
                            width: 25,
                          )
                        : Image.asset(
                            'assets/images/fair_day.png',
                            height: 25,
                            width: 25,
                          ),

                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '${data['maxtemp']}\u00b0/${data['mintemp']}\u00b0', //TODO Min MAX TEMP
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
