import 'package:open_meteo_api_client/open_meteo_api_client.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('returns correct Weather object', () {
        expect(
          Weather.fromJson(
            <String, dynamic>{
              'elevation': 18,
              'latitude': 41.85003,
              'longitude': -87.65005,
              'current_weather': {
                'temperature': 15.3,
                'weathercode': 2,
              },
            },
          ),
          isA<Weather>()
              .having((w) => w.elevation, 'elevation', 18)
              .having((w) => w.latitude, 'latitude', 41.85003)
              .having((w) => w.longitude, 'longitude', -87.65005)
              .having((w) => w.currentWeather!.temperature, 'temperature', 15.3)
              .having((w) => w.currentWeather!.weathercode, 'weathercode', 2),
        );
      });
    });
  });
}
