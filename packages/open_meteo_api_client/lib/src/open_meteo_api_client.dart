import 'package:dio/dio.dart';
import 'package:open_meteo_api_client/src/geocoding_api.dart';
import 'package:open_meteo_api_client/src/weather_api.dart';

/// {@template open_meteo_api_client}
/// A Dart API Client for the Open-Meteo API.
/// {@endtemplate}
class OpenMeteoApiClient {
  /// {@macro open_meteo_api_client}
  OpenMeteoApiClient({Dio? dio}) : _dio = dio ?? Dio(BaseOptions()) {
    weather = WeatherApi(_dio);
    geocoding = GeocodingApi(_dio);
  }

  final Dio _dio;
  late final WeatherApi weather;
  late final GeocodingApi geocoding;
}
