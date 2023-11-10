// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: 'https://api.open-meteo.com/v1/')
abstract class WeatherApi {
  factory WeatherApi(
    Dio dio, {
    String baseUrl,
  }) = _WeatherApi;

  /// Get [Weather] for a given [latitude] and [longitude].
  @GET('/forecast')
  Future<Weather> getWeather({
    @Query('latitude') required double lat,
    @Query('longitude') required double long,
    @Query('current_weather') bool current = true,
  });
}

@JsonSerializable()
class Weather {
  const Weather({
    required this.elevation,
    required this.latitude,
    required this.longitude,
    this.currentWeather,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  final double elevation;
  final double latitude;
  final double longitude;
  @JsonKey(name: 'current_weather')
  final CurrentWeather? currentWeather;
}

@JsonSerializable()
class CurrentWeather {
  const CurrentWeather({
    required this.temperature,
    required this.weathercode,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);

  final double temperature;
  final int weathercode;
}
