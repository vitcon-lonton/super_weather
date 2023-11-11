// import 'package:mocktail/mocktail.dart';
// import 'package:open_meteo_api_client/open_meteo_api_client.dart' as open_meteo;
// import 'package:test/test.dart';
// import 'package:weather_repository/weather_repository.dart';

// class MockWeatherApi extends Mock implements open_meteo.WeatherApi {}

// class MockWeather extends Mock implements open_meteo.Weather {}

// class MockCurrentWeather extends Mock implements open_meteo.CurrentWeather {}

// void main() {
//   group('WeatherRepository', () {
//     late open_meteo.WeatherApi weatherApi;
//     late WeatherRepository weatherRepository;

//     setUp(() {
//       weatherApi = MockWeatherApi();
//       weatherRepository = WeatherRepository(weatherApi: weatherApi);
//     });

//     group('constructor', () {
//       test('instantiates internal weather api client when not injected', () {
//         expect(WeatherRepository(), isNotNull);
//       });
//     });

//     group('getWeather', () {
//       const latitude = 41.85003;
//       const longitude = -87.65005;
//       const elevation = 12.0;
//       const temperature = 42.42;
//       const weathercode = 2;

//       test('calls getWeather with correct latitude/longitude', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();

//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(weathercode);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         try {
//           await weatherRepository.getWeather(
//               latitude: latitude, longitude: longitude);
//         } catch (_) {}

//         verify(
//           () => weatherApi.getWeather(lat: latitude, long: longitude),
//         ).called(1);
//       });

//       test('throws when getWeather fails', () async {
//         final exception = Exception('oops');

//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenThrow(exception);

//         expect(
//           () async => weatherRepository.getWeather(
//             latitude: latitude,
//             longitude: longitude,
//           ),
//           throwsA(exception),
//         );
//       });
//       test('returns correct weather on success (unknown)', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();
//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(-1);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         final actual = await weatherRepository.getWeather(
//             latitude: latitude, longitude: longitude);

//         expect(
//           actual,
//           const Weather(
//             temperature: temperature,
//             condition: WeatherCondition.unknown,
//             latitude: latitude,
//             longitude: longitude,
//           ),
//         );
//       });

//       test('returns correct weather on success (snowy)', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();
//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(71);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         final actual = await weatherRepository.getWeather(
//             latitude: latitude, longitude: longitude);

//         expect(
//           actual,
//           const Weather(
//             temperature: temperature,
//             condition: WeatherCondition.snowy,
//             latitude: latitude,
//             longitude: longitude,
//           ),
//         );
//       });

//       test('returns correct weather on success (rainy)', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();
//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(51);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         final actual = await weatherRepository.getWeather(
//             latitude: latitude, longitude: longitude);

//         expect(
//           actual,
//           const Weather(
//             temperature: temperature,
//             condition: WeatherCondition.rainy,
//             latitude: latitude,
//             longitude: longitude,
//           ),
//         );
//       });

//       test('returns correct weather on success (clear)', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();
//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(0);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         final actual = await weatherRepository.getWeather(
//             latitude: latitude, longitude: longitude);

//         expect(
//           actual,
//           const Weather(
//             temperature: temperature,
//             condition: WeatherCondition.clear,
//             latitude: latitude,
//             longitude: longitude,
//           ),
//         );
//       });

//       test('returns correct weather on success (cloudy)', () async {
//         final weather = MockWeather();
//         final currentWeather = MockCurrentWeather();
//         when(() => currentWeather.temperature).thenReturn(temperature);
//         when(() => currentWeather.weathercode).thenReturn(2);
//         when(() => weather.latitude).thenReturn(latitude);
//         when(() => weather.longitude).thenReturn(longitude);
//         when(() => weather.elevation).thenReturn(elevation);
//         when(() => weather.currentWeather).thenReturn(currentWeather);
//         when(
//           () => weatherApi.getWeather(
//             lat: any(named: 'lat'),
//             long: any(named: 'long'),
//           ),
//         ).thenAnswer((_) async => weather);

//         final actual = await weatherRepository.getWeather(
//             latitude: latitude, longitude: longitude);

//         expect(
//           actual,
//           const Weather(
//             temperature: temperature,
//             condition: WeatherCondition.cloudy,
//             latitude: latitude,
//             longitude: longitude,
//           ),
//         );
//       });
//     });
//   });
// }
