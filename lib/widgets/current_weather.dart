import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/constants/constants.dart';

Widget currentWeather(IconData icon, String location, String temp) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 64,
          ),
          kheight15,
          Text(
            temp,
            style: const TextStyle(fontSize: 30),
          ),
          kheight15,
          Text(
            location,
            style: const TextStyle(fontSize: 20, color: Colors.black54),
          ),
        ],
      ),
    ),
  );
}
