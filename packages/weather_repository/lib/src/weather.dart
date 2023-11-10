// ignore_for_file: public_member_api_docs
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.g.dart';
part 'weather.freezed.dart';

/// {@template weather}
/// An object which represents a specific weather condition.
/// {@endtemplate}
enum WeatherCondition { clear, rainy, cloudy, snowy, unknown }

/// {@template weather}
/// An object which represents a specific weather.
/// {@endtemplate}
@freezed
class Weather with _$Weather {
  const factory Weather({
    required double temperature,
    required WeatherCondition condition,
    required double latitude,
    required double longitude,
    String? location,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
