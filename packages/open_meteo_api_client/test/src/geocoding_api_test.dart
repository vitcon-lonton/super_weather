// ignore_for_file: prefer_const_constructors
import 'package:dio/dio.dart' as dio;
import 'package:mocktail/mocktail.dart';
import 'package:open_meteo_api_client/open_meteo_api_client.dart';
import 'package:test/test.dart';

class MockDioClient extends Mock implements dio.Dio {}

class MockResponse extends Mock implements Location {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('OpenGeocodingApi', () {
    late dio.Dio dioClient;
    // ignore: unused_local_variable
    late GeocodingApi geocodingApi;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      dioClient = MockDioClient();
      geocodingApi = GeocodingApi(dioClient);
    });
  });
}
