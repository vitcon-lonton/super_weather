import 'package:open_meteo_api_client/open_meteo_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('returns correct Location object', () {
        expect(
          Location.fromJson(
            <String, dynamic>{
              'id': 4887398,
              'name': 'Chicago',
              'latitude': 41.85003,
              'longitude': -87.65005,
              'country': 'United State',
              'country_id': 7887398,
            },
          ),
          isA<Location>()
              .having((w) => w.id, 'id', 4887398)
              .having((w) => w.name, 'name', 'Chicago')
              .having((w) => w.latitude, 'latitude', 41.85003)
              .having((w) => w.longitude, 'longitude', -87.65005)
              .having((w) => w.country, 'country', 'United State')
              .having((w) => w.countryId, 'country_id', 7887398),
        );
      });
    });
  });
}
