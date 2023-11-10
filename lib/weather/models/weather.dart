import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:weather_repository/weather_repository.dart' hide Weather;
import 'package:weather_repository/weather_repository.dart'
    as weather_repository;

part 'weather.g.dart';
part 'weather.freezed.dart';

enum TemperatureUnits { fahrenheit, celsius }

extension TemperatureUnitsX on TemperatureUnits {
  bool get isFahrenheit => this == TemperatureUnits.fahrenheit;
  bool get isCelsius => this == TemperatureUnits.celsius;
}

@freezed
class Temperature with _$Temperature {
  const factory Temperature({required double value}) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required WeatherCondition condition,
    required DateTime lastUpdated,
    required Temperature temperature,
    required double latitude,
    required double longitude,
    required Location? location,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
