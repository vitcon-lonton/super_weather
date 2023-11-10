import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:super_weather/utils/utils.dart';
import 'package:super_weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart'
    show WeatherRepository;

part 'weather_bloc.freezed.dart';
part 'weather_bloc.g.dart';
part 'weather_event.dart';
part 'weather_state.dart';

const _duration = Duration(milliseconds: 300);

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  WeatherBloc({
    required this.weatherRepository,
  }) : super(WeatherState.initial()) {
    on<UnitsToggled>(_onUnitsToggled);
    on<RefreshRequested>(_onRefreshRequested);
    on<LocationChanged>(_onLocationChanged, transformer: debounce(_duration));
  }

  final WeatherRepository weatherRepository;

  Future<void> _onLocationChanged(
    LocationChanged event,
    Emitter<WeatherState> emit,
  ) async {
    final location = event.location;

    emit(state.copyWith(status: WeatherStatus.loading));

    try {
      final response = await weatherRepository.getWeather(
          latitude: location.latitude, longitude: location.longitude);

      final weather = Weather(
        condition: response.condition,
        lastUpdated: DateTime.now(),
        temperature: Temperature(value: response.temperature),
        latitude: response.latitude,
        longitude: response.longitude,
        location: location,
      );

      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      emit(
        state.copyWith(
          status: WeatherStatus.success,
          temperatureUnits: units,
          weather: weather.copyWith(temperature: Temperature(value: value)),
        ),
      );
    } catch (e, st) {
      emit(state.copyWith(status: WeatherStatus.failure));
      addError(e, st);
    }
  }

  void _onUnitsToggled(UnitsToggled event, Emitter<WeatherState> emit) {
    final units = state.temperatureUnits.isFahrenheit
        ? TemperatureUnits.celsius
        : TemperatureUnits.fahrenheit;

    if (!state.status.isSuccess) {
      emit(state.copyWith(temperatureUnits: units));
      return;
    }

    final weather = state.weather;
    if (weather != null) {
      final temperature = weather.temperature;
      final value = units.isCelsius
          ? temperature.value.toCelsius()
          : temperature.value.toFahrenheit();
      emit(
        state.copyWith(
          temperatureUnits: units,
          weather: weather.copyWith(temperature: Temperature(value: value)),
        ),
      );
    }
  }

  Future<void> _onRefreshRequested(
    RefreshRequested event,
    Emitter<WeatherState> emit,
  ) async {
    if (!state.status.isSuccess) return;
    if (state.weather?.location == null) return;

    final location = state.weather!.location!;

    try {
      final response = await weatherRepository.getWeather(
          latitude: location.latitude, longitude: location.longitude);

      final weather = state.weather!.copyWith(
        condition: response.condition,
        lastUpdated: DateTime.now(),
        temperature: Temperature(value: response.temperature),
        latitude: response.latitude,
        longitude: response.longitude,
      );

      final units = state.temperatureUnits;
      final value = units.isFahrenheit
          ? weather.temperature.value.toFahrenheit()
          : weather.temperature.value;

      emit(
        state.copyWith(
          status: WeatherStatus.success,
          temperatureUnits: units,
          weather: weather.copyWith(temperature: Temperature(value: value)),
        ),
      );
    } catch (e, st) {
      emit(state);
      addError(e, st);
    }
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) =>
      WeatherState.fromJson(json);

  @override
  Map<String, dynamic> toJson(WeatherState state) => state.toJson();
}

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  double toCelsius() => (this - 32) * 5 / 9;
}
