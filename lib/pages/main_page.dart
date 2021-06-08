import 'package:assignment/models/weather_data.dart';
import 'package:assignment/widgets/app_label.dart';
import 'package:assignment/widgets/current_day.dart';
import 'package:assignment/widgets/topbanner.dart';
import 'package:assignment/widgets/weathercard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<WeatherData>().getApiData;

    return Scaffold(body: Consumer<WeatherData>(
      builder: (context, value, child) {
        return value.data.length == 0 && !value.hasError
            ? CircularProgressIndicator()
            : value.hasError
                ? Text(
                    "Something went wrong unexpectly ${value.hasErrorMessage}",
                    textAlign: TextAlign.center,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const TopBanner(),
                      SingleChildScrollView(
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return CurrentDayWidget();
                              })),
                      CurrentDayWidget(),
                      SizedBox(
                        height: 10,
                      ),
                      const AppLabel(),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: value.data['Cape Town'].length,
                          itemBuilder: (context, index) {
                            return WeatherCard(
                              data: value.data['Cape Town'][index],
                            );
                          },
                        ),
                      ),
                    ],
                  );
      },
    ));
  }
}
