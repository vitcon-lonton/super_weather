// ignore_for_file: prefer_const_constructors

import 'package:test/test.dart';
import 'package:weather_repository/weather_repository.dart';

void main() {
  group('Weather', () {
    test('can be (de)serialized', () {
      final weather = Weather(
        temperature: 10.2,
        condition: WeatherCondition.cloudy,
        latitude: 12.0398,
        longitude: 87.2343,
      );

      expect(Weather.fromJson(weather.toJson()), equals(weather));
    });
  });
}
