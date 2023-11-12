import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:open_meteo_api_client/open_meteo_api_client.dart' as meteo;
import 'package:test/test.dart';

class MockGeocodingApi extends Mock implements meteo.GeocodingApi {}

class MockLocation extends Mock implements meteo.Location {}

class FakeSearchQuery extends Fake implements meteo.SearchQuery {}

class MockSearchResult extends Mock implements meteo.SearchResult {}

void main() {
  group('GeocodingRepository', () {
    late meteo.GeocodingApi geocodingApi;
    late GeocodingRepository geocodingRepository;

    setUp(() {
      geocodingApi = MockGeocodingApi();
      geocodingRepository = GeocodingRepository(geocodingApi: geocodingApi);
    });

    setUpAll(() {
      registerFallbackValue(FakeSearchQuery());
    });

    group('parse meteo location to repo location', () {
      test('returns correct Location object', () async {
        expect(
          const meteo.Location(
            id: 2093,
            name: 'location_1',
            latitude: 12.23,
            longitude: 209.022,
            country: 'HongKong',
            countryId: 20922,
          ).toRepo(),
          isA<Location>()
              .having((w) => w.id, 'id', 2093)
              .having((w) => w.name, 'name', 'location_1')
              .having((w) => w.latitude, 'latitude', 12.23)
              .having((w) => w.longitude, 'longitude', 209.022)
              .having((w) => w.country, 'country', 'HongKong')
              .having((w) => w.countryId, 'countryId', 20922),
        );
      });
    });

    group('constructor', () {
      test('instantiates internal geocoding api client when not injected', () {
        expect(GeocodingRepository(), isNotNull);
      });
    });

    group('search', () {
      final results = [
        const meteo.Location(
          id: 2093,
          name: 'location_1',
          latitude: 12.23,
          longitude: 209.022,
        ),
        const meteo.Location(
          id: 2023,
          name: 'location_2',
          latitude: 12.23,
          longitude: 209.022,
        ),
      ];

      test('calls search geocodingApi with correct keyword', () async {
        try {
          await geocodingRepository.search('keyword');
        } catch (_) {}

        final matcher = isA<meteo.SearchQuery>().having(
          (w) => w.name,
          'name',
          'keyword',
        );

        verify(() => geocodingApi.search(any(that: matcher))).called(1);
      });

      test('throws when search fails', () async {
        final exception = Exception('oops');

        when(() => geocodingApi.search(any())).thenThrow(exception);

        expect(geocodingRepository.search('keyword'), throwsA(exception));
      });

      test('returns correct locations on success (results is null)', () async {
        when(() => geocodingApi.search(any()))
            .thenAnswer((_) async => const meteo.SearchResult());

        final actual = await geocodingRepository.search('keyword');

        expect(actual, isEmpty);
      });

      test('returns correct locations on success (results is not null)',
          () async {
        when(
          () => geocodingApi.search(any()),
        ).thenAnswer((_) async => meteo.SearchResult(results: results));

        final actual = await geocodingRepository.search('keyword');

        expect(actual, equals(results.map((e) => e.toRepo())));
      });
    });
  });
}
