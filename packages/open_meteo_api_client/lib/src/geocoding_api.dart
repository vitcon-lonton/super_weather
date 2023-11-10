// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'geocoding_api.g.dart';

@RestApi(baseUrl: 'https://geocoding-api.open-meteo.com/v1/')
abstract class GeocodingApi {
  factory GeocodingApi(
    Dio dio, {
    String baseUrl,
  }) = _GeocodingApi;

  /// Finds a [Location] `/v1/search/?name=(query)?count=(count}`.
  @GET('/search')
  Future<LocationSearch> search({
    @Query('name') required String name,
    @Query('language') String language = 'en',
    @Query('count') int count = 10,
  });
}

@JsonSerializable()
class Location {
  const Location({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    this.country,
    this.countryId,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  final int id;
  final String name;
  final double latitude;
  final double longitude;
  final String? country;
  @JsonKey(name: 'country_id')
  final int? countryId;
}

@JsonSerializable()
class LocationSearch {
  const LocationSearch({this.results, this.generationTimeMs});

  factory LocationSearch.fromJson(Map<String, dynamic> json) =>
      _$LocationSearchFromJson(json);

  Map<String, dynamic> toJson() => _$LocationSearchToJson(this);

  final List<Location>? results;
  @JsonKey(name: 'generationtime_ms')
  final double? generationTimeMs;
}
