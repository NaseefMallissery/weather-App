import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_api.dart';
import 'package:weather_app/widgets/additional_information_widget.dart';
import 'package:weather_app/widgets/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApi appApi = WeatherApi();
  Weather? data;
  Future<void> getData() async {
    data = await appApi.getCurrentWeather("London");
  }

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   appApi.getCurrentWeather("London");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                currentWeather(Icons.wb_sunny_rounded, "${data?.cityName}",
                    "${data?.temp}"),
                kheight,
                const Text(
                  "Additional Informations",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(225, 26, 26, 26),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                kheight,
                additionalInformations(
                  "${data!.wind}",
                  "${data!.humidity}",
                  "${data!.pressure}",
                  "${data!.feels_like}",
                )
              ],
            );
          }
          return Container();
        }),
      ),
    );
  }
}
