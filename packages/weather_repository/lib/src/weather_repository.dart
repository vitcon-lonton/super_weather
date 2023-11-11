import 'dart:async';
import 'package:open_meteo_api_client/open_meteo_api_client.dart' as meteo;
import 'package:weather_repository/weather_repository.dart';

/// {@template weather_repository}
/// A Dart Repository which manages the weather domain
/// {@endtemplate}
class WeatherRepository {
  /// {@macro weather_repository}
  WeatherRepository({
    meteo.WeatherApi? weatherApi,
  }) : _weatherApi = weatherApi ?? meteo.WeatherApi.initialize();

  // final open_meteo.OpenMeteoApiClient _openMeteoClient;
  final meteo.WeatherApi _weatherApi;

  /// Method to get Weather from geocoding.
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final query = meteo.WeatherQuery(latitude, longitude);
    final weather = await _weatherApi.getWeather(query);
    return weather.toDomain();
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

extension on meteo.Weather {
  Weather toDomain() {
    return Weather(
      condition: currentWeather!.weathercode.toCondition,
      temperature: currentWeather!.temperature,
      latitude: latitude,
      longitude: longitude,
    );
  }
}
