part of 'weather_bloc.dart';

enum WeatherStatus { initial, loading, success, failure }

extension WeatherStatusX on WeatherStatus {
  bool get isInitial => this == WeatherStatus.initial;
  bool get isLoading => this == WeatherStatus.loading;
  bool get isSuccess => this == WeatherStatus.success;
  bool get isFailure => this == WeatherStatus.failure;
}

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    required WeatherStatus status,
    required TemperatureUnits temperatureUnits,
    Weather? weather,
  }) = _WeatherState;

  factory WeatherState.fromJson(Map<String, dynamic> json) =>
      _$WeatherStateFromJson(json);

  factory WeatherState.initial() => WeatherState(
      status: WeatherStatus.initial,
      temperatureUnits: TemperatureUnits.celsius);
}
