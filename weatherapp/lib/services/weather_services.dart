import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart'; 

class WeatherService {
  static const URL = 'https://api.openweathermap.org/data/2.5/weather';
  final String apikey;

  WeatherService(this.apikey);

  
  Future<Weather> getWeather(String cityName) async {
    final response = await http.get(Uri.parse('$URL?q=$cityName&appid=$apikey&units=metric'));

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  
  Future<String> getCurrentCity() async {
  
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      debugPrint("Location permission denied.");
      return "Unknown Location";
    }

    try {
    
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(
          accuracy: LocationAccuracy.high, 
          distanceFilter: 100, 
        ),
      );

      debugPrint("Position: Latitude = ${position.latitude}, Longitude = ${position.longitude}");

      
      final response = await http.get(Uri.parse(
          '$URL?lat=${position.latitude}&lon=${position.longitude}&appid=$apikey'));

      if (response.statusCode == 200) {
        final weatherData = jsonDecode(response.body);
        String? city = weatherData['name']; 
        return city ?? "City not available"; 
      } else {
        return "Failed to fetch city";
      }
    } catch (e) {
      
      debugPrint("Error fetching location: $e");
      return "Error fetching location: $e";
    }
  }
}
