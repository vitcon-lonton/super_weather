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

  group('WeatherQuery', () {
    group('constructor', () {
      test('current value is true', () {
        expect(
          WeatherQuery(41.85003, -87.65005),
          isA<WeatherQuery>()
              .having((w) => w.latitude, 'latitude', 41.85003)
              .having((w) => w.longitude, 'longitude', -87.65005)
              .having((w) => w.current, 'current', true),
        );
      });
    });

    group('toJson', () {
      test('returns correct WeatherQuery object', () {
        expect(
          WeatherQuery(41.85003, -87.65005).toJson(),
          {
            'latitude': 41.85003,
            'longitude': -87.65005,
            'current_weather': true,
          },
        );
      });
    });
  });
}
