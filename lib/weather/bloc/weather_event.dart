part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  factory WeatherEvent.unitsToggled() = UnitsToggled;
  factory WeatherEvent.locationChanged(Location location) = LocationChanged;
  factory WeatherEvent.refreshRequested() = RefreshRequested;
}
