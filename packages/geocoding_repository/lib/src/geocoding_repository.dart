import 'dart:async';

import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:open_meteo_api_client/open_meteo_api_client.dart' hide Location;

/// {@template geocoding_repository}
/// A Dart Repository which manages the geocoding domain
/// {@endtemplate}
class GeocodingRepository {
  /// {@macro geocoding_repository}
  GeocodingRepository({
    OpenMeteoApiClient? openMeteoClient,
  }) : _meteoClient = openMeteoClient ?? OpenMeteoApiClient();

  final OpenMeteoApiClient _meteoClient;

  /// Method to search geocoding from keyword.
  Future<List<Location>> search(String name) async {
    final response = await _meteoClient.geocoding.search(count: 30, name: name);
    final locations = response.results?.map((element) {
          return Location(
            id: element.id,
            name: element.name,
            latitude: element.latitude,
            longitude: element.longitude,
            countryId: element.countryId,
            country: element.country,
          );
        }).toList() ??
        List<Location>.empty();

    return locations;
  }
}
