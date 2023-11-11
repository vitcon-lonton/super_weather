// ignore_for_file: prefer_const_constructors
import 'package:open_meteo_api_client/open_meteo_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('OpenMeteoApiClient', () {
    test('can be instantiated', () {
      expect(OpenMeteoApiClient(), isNotNull);
    });
  });
}
