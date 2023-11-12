import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'geocoding_api.g.dart';

const _baseUrl = 'https://geocoding-api.open-meteo.com/v1/';

@RestApi(baseUrl: _baseUrl)
abstract class GeocodingApi {
  factory GeocodingApi(Dio dio, {String baseUrl}) = _GeocodingApi;

  factory GeocodingApi.initialize() => _GeocodingApi(Dio(), baseUrl: _baseUrl);

  static String get baseUrl => _baseUrl;

  // Future<LocationSearch> search({
  //   @Query('name') required String name,
  //   @Query('language') String language = 'en',
  //   @Query('count') int count = 10,
  // });

  /// Finds a [Location] `/v1/search/?name=(query)?count=(count ?? 10}`.
  @GET('/search')
  Future<SearchResult> search(@Queries() SearchQuery query);
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
class SearchQuery {
  SearchQuery(this.name, {this.count = 10})
      : assert(count < 1000, 'Must in range [1 - 1000]'),
        assert(count > 1, 'Must in range [1 - 1000]');

  final String name;
  final int count;
  String language = 'en';

  Map<String, dynamic> toJson() => _$SearchQueryToJson(this);
}

@JsonSerializable()
class SearchResult {
  const SearchResult({this.results, this.generationTimeMs});

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);

  final List<Location>? results;
  @JsonKey(name: 'generationtime_ms')
  final double? generationTimeMs;
}
