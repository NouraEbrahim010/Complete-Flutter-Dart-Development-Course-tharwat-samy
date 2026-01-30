import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) return Colors.blue;
  condition = condition.toLowerCase().trim();
  switch (condition) {
    case 'sunny':
      return Colors.amber;

    case 'clear':
      return Colors.blue;

    case 'partly cloudy':
      return Colors.lightBlue;

    case 'cloudy':
      return Colors.blueGrey;

    case 'overcast':
      return Colors.grey;

    case 'mist':
    case 'fog':
      return Colors.blueGrey;

    case 'freezing fog':
      return Colors.indigo;

    case 'patchy rain possible':
    case 'patchy light rain':
      return Colors.lightBlue;

    case 'light rain':
      return Colors.blue;

    case 'moderate rain':
    case 'moderate rain at times':
      return Colors.indigo;

    case 'heavy rain':
    case 'heavy rain at times':
      return Colors.indigo;

    case 'torrential rain shower':
      return Colors.deepPurple;

    case 'patchy snow possible':
      return Colors.blueGrey;

    case 'light snow':
      return Colors.indigo;

    case 'moderate snow':
    case 'patchy moderate snow':
      return Colors.indigo;

    case 'heavy snow':
    case 'patchy heavy snow':
      return Colors.blueGrey;

    case 'thundery outbreaks possible':
      return Colors.deepPurple;

    case 'light rain shower':
      return Colors.blue;

    case 'moderate or heavy rain shower':
      return Colors.indigo;

    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;

    default:
      return Colors.blue;
  }
}
