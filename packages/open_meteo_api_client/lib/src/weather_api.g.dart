// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherQuery _$WeatherQueryFromJson(Map<String, dynamic> json) => WeatherQuery(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
    )..current = json['current_weather'] as bool? ?? true;

Map<String, dynamic> _$WeatherQueryToJson(WeatherQuery instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current_weather': instance.current,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      elevation: (json['elevation'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      currentWeather: json['current_weather'] == null
          ? null
          : CurrentWeather.fromJson(
              json['current_weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'elevation': instance.elevation,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current_weather': instance.currentWeather,
    };

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather(
      weathercode: json['weathercode'] as int,
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'weathercode': instance.weathercode,
      'temperature': instance.temperature,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WeatherApi implements WeatherApi {
  _WeatherApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.open-meteo.com/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Weather> getWeather(WeatherQuery query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(query.toJson());
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Weather>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/forecast',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = Weather.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
