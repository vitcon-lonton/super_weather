// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: json['id'] as int,
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      country: json['country'] as String?,
      countryId: json['country_id'] as int?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'country': instance.country,
      'country_id': instance.countryId,
    };

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => SearchQuery(
      json['name'] as String,
      count: json['count'] as int? ?? 10,
    )..language = json['language'] as String;

Map<String, dynamic> _$SearchQueryToJson(SearchQuery instance) =>
    <String, dynamic>{
      'name': instance.name,
      'count': instance.count,
      'language': instance.language,
    };

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationTimeMs: (json['generationtime_ms'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'results': instance.results,
      'generationtime_ms': instance.generationTimeMs,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _GeocodingApi implements GeocodingApi {
  _GeocodingApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://geocoding-api.open-meteo.com/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SearchResult> search(SearchQuery query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(query.toJson());
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SearchResult>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/search',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = SearchResult.fromJson(_result.data!);
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
