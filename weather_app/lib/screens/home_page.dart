import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/weather_cubit.dart';
import 'package:weather_app/screens/search_page.dart';
import 'package:weather_app/widget/no_weather.dart';
import 'package:weather_app/widget/weather.dart';
import 'package:weather_app/cubits/get_weather_cubit/waether_states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WaetherStates>(
        builder: (context, state) {
          if (state is NoWeatherloaded) {
            return NoWeather();
          } else if (state is Weatherloaded) {
            return Weather();
          } else {
            return Center(
              child: Text("oops there is an error please try again"),
            );
          }
        },
      ),
    );
  }
}
