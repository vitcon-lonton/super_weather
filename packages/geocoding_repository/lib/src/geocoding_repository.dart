import 'dart:async';

import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:open_meteo_api_client/open_meteo_api_client.dart' as meteo;

/// {@template geocoding_repository}
/// A Dart Repository which manages the geocoding domain
/// {@endtemplate}
class GeocodingRepository {
  /// {@macro geocoding_repository}
  GeocodingRepository({
    meteo.GeocodingApi? geocodingApi,
  }) : _geocodingApi = geocodingApi ?? meteo.GeocodingApi.initialize();

  final meteo.GeocodingApi _geocodingApi;

  /// Method to search geocoding from keyword.
  Future<List<Location>> search(String name) async {
    final query = meteo.SearchQuery(name, count: 30);
    final response = await _geocodingApi.search(query);
    final locations = response.results?.map((e) => e.toDomain()).toList();
    return locations ?? List<Location>.empty();
  }
}

extension on meteo.Location {
  Location toDomain() {
    return Location(
      id: id,
      name: name,
      latitude: latitude,
      longitude: longitude,
      countryId: countryId,
      country: country,
    );
  }
}
