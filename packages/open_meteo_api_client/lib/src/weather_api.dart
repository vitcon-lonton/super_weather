import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api.g.dart';

const _baseUrl = 'https://api.open-meteo.com/v1/';

@RestApi(baseUrl: _baseUrl)
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  factory WeatherApi.initialize() => _WeatherApi(Dio(), baseUrl: _baseUrl);

  static String get baseUrl => _baseUrl;

  // @GET('/forecast')
  // Future<Weather> getWeather({
  //   @Query('latitude') required double lat,
  //   @Query('longitude') required double long,
  //   @Query('current_weather') bool current = true,
  // });

  /// Get [Weather] for a given [query].
  @GET('/forecast')
  Future<Weather> getWeather(@Queries() WeatherQuery query);
}

@JsonSerializable()
class WeatherQuery {
  WeatherQuery(this.latitude, this.longitude);

  final double latitude;
  final double longitude;

  @JsonKey(name: 'current_weather', defaultValue: true)
  bool current = true;

  Map<String, dynamic> toJson() => _$WeatherQueryToJson(this);
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

  final double elevation;
  final double latitude;
  final double longitude;
  @JsonKey(name: 'current_weather')
  final CurrentWeather? currentWeather;

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class CurrentWeather {
  const CurrentWeather({
    required this.weathercode,
    required this.temperature,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  final int weathercode;
  final double temperature;

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
