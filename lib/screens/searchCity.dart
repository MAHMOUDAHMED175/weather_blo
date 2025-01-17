import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/layout/weather_cubit.dart';
import 'package:weather_bloc/layout/weather_state.dart';
import 'package:weather_bloc/screens/home.dart';

class SearchCity extends StatelessWidget {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WeatherCubit(),
      child: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              titleSpacing: 26.0,
              title: Text(
                'City search',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                ),
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AnalogClock.dark(),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 2,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Container(
                          alignment: Alignment(0, -0.4),
                          child: Container(
                            height: 50,
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Container(
                        height: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.deepPurple.withOpacity(0.8),
                                  Colors.deepPurple.withOpacity(0.1),
                                ]),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Find the weather in your city',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        onChanged: (data) {
                          cityName = data;
                        },
                        onSubmitted: (data) {
                          cityName = data;
                          WeatherCubit.get(context)
                              .getWeatherData(city_Name: cityName!);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      HomeScreen(city_Name: cityName!)));
                        },
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width / 15,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 32, horizontal: 24),
                          label: Text(
                            'search',
                            style: TextStyle(color: Colors.grey),
                          ),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                WeatherCubit.get(context)
                                    .getWeatherData(city_Name: cityName!);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen(
                                              city_Name: cityName!,
                                            )));
                              },
                              child: Icon(
                                Icons.search,
                                color: Colors.grey,
                              )),
                          border: OutlineInputBorder(),
                          hintText: 'Enter a city',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.deepPurple.withOpacity(0.1),
                                  Colors.deepPurple.withOpacity(0.8),
                                ]),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'know the weather in nearby cities',
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Container(
                        height: 1.0,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment(0, -0.4),
                          child: Container(
                            height: 50,
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 100.0,
                        ),
                        Container(
                          alignment: Alignment(0, -0.4),
                          child: Container(
                            height: 50,
                            width: 2,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
