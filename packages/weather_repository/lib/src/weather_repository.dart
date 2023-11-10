import 'dart:async';
import 'package:open_meteo_api_client/open_meteo_api_client.dart' hide Weather;
import 'package:weather_repository/weather_repository.dart';

/// {@template weather_repository}
/// A Dart Repository which manages the weather domain
/// {@endtemplate}
class WeatherRepository {
  /// {@macro weather_repository}
  WeatherRepository({
    OpenMeteoApiClient? openMeteoClient,
  }) : _openMeteoClient = openMeteoClient ?? OpenMeteoApiClient();

  final OpenMeteoApiClient _openMeteoClient;

  /// Method to get Weather from geocoding.
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _openMeteoClient.weather
        .getWeather(lat: latitude, long: longitude);

    return Weather(
      condition: response.currentWeather!.weathercode.toCondition,
      temperature: response.currentWeather!.temperature,
      latitude: response.latitude,
      longitude: response.longitude,
    );
  }
}

extension on int {
  WeatherCondition get toCondition {
    switch (this) {
      case 0:
        return WeatherCondition.clear;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return WeatherCondition.cloudy;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
      case 95:
      case 96:
      case 99:
        return WeatherCondition.rainy;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return WeatherCondition.snowy;
      default:
        return WeatherCondition.unknown;
    }
  }
}
