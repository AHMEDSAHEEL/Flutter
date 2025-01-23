import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatherappbloc/customs/custom_alignBox.dart';
import 'package:weatherappbloc/customs/custom_alignCircle.dart';
import 'package:weatherappbloc/customs/custom_text_center.dart';
import 'package:weatherappbloc/customs/custom_text_top.dart';
import 'package:weatherappbloc/weather_bloc/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget getWeatherIcon(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Image.asset('images/1.png');
      case >= 300 && < 400:
        return Image.asset('images/2.png');
      case >= 500 && < 600:
        return Image.asset('images/3.png');
      case >= 600 && < 700:
        return Image.asset('images/4.png');
      case >= 700 && < 800:
        return Image.asset('images/5.png');
      case == 800:
        return Image.asset('images/6.png');
      case > 800 && <= 804:
        return Image.asset('images/7.png');
      default:
        return Image.asset('images/7.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   systemOverlayStyle:
      //       const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CustomAlignCircle(
                  x: 3,
                  y: -0.3,
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple),
              CustomAlignCircle(
                  x: -3,
                  y: -0.3,
                  height: 300,
                  width: 300,
                  color: Color(0xFF673AB7)),
              CustomAlignBox(
                  x: 0,
                  y: -1.2,
                  height: 200,
                  width: 200,
                  color: Color(0xFFFFAB40)),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
                builder: (context, state) {
                  if (state is WeatherBlocSuccess) {
                    return SizedBox(
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CustomTextTop(
                                    text: '📍',
                                    color: Colors.red,
                                    font: FontWeight.w300),
                                CustomTextTop(
                                    text: '${state.weather.areaName}',
                                    color: Colors.white,
                                    font: FontWeight.w300),
                              ],
                            ),
                            const SizedBox(height: 8),
                            CustomTextCenter(
                                text: 'Good Morning',
                                color: Colors.white,
                                font: FontWeight.bold,
                                fontSize: 25),
                            getWeatherIcon(state.weather.weatherConditionCode!),
                            Center(
                              child: CustomTextCenter(
                                  text:
                                      '${state.weather.temperature!.celsius!.round()}°C',
                                  color: Colors.white,
                                  font: FontWeight.w600,
                                  fontSize: 55),
                            ),
                            Center(
                              child: CustomTextCenter(
                                  text:
                                      state.weather.weatherMain!.toUpperCase(),
                                  color: Colors.white,
                                  font: FontWeight.w500,
                                  fontSize: 25),
                            ),
                            const SizedBox(height: 5),
                            
                            Center(
                              child: Text(
                                DateFormat('EEEE dd •')
                                    .add_jm()
                                    .format(state.weather.date!),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/11.png',
                                      scale: 8,
                                    ),
                                    const SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Sunrise',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          DateFormat()
                                              .add_jm()
                                              .format(state.weather.sunrise!),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/12.png',
                                      scale: 8,
                                    ),
                                    const SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Sunset',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          DateFormat()
                                              .add_jm()
                                              .format(state.weather.sunset!),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Image.asset(
                                    'images/13.png',
                                    scale: 8,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Temp Max',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        "${state.weather.tempMax!.celsius!.round()} °C",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )
                                ]),
                                Row(children: [
                                  Image.asset(
                                    'images/14.png',
                                    scale: 8,
                                  ),
                                  const SizedBox(width: 5),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Temp Min',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        "${state.weather.tempMin!.celsius!.round()} °C",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )
                                ])
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
