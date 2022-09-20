import 'package:flutter/cupertino.dart';
import 'package:weather_app/constants/constants.dart';

Widget additionalInformations(
    String wind, String humidity, String pressure, String feelsLike) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titleTextStyle,
                ),
                kheight15,
                Text(
                  "Pressure",
                  style: titleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: titleTextStyle,
                ),
                kheight15,
                Text(
                  pressure,
                  style: titleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity ",
                  style: titleTextStyle,
                ),
                kheight15,
                Text(
                  "Feels Like",
                  style: titleTextStyle,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: titleTextStyle,
                ),
                kheight15,
                Text(
                  feelsLike,
                  style: titleTextStyle,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
