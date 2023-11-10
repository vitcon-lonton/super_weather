// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherStateImpl _$$WeatherStateImplFromJson(Map<String, dynamic> json) =>
    _$WeatherStateImpl(
      status: $enumDecode(_$WeatherStatusEnumMap, json['status']),
      temperatureUnits:
          $enumDecode(_$TemperatureUnitsEnumMap, json['temperatureUnits']),
      weather: json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherStateImplToJson(_$WeatherStateImpl instance) =>
    <String, dynamic>{
      'status': _$WeatherStatusEnumMap[instance.status]!,
      'temperatureUnits': _$TemperatureUnitsEnumMap[instance.temperatureUnits]!,
      'weather': instance.weather,
    };

const _$WeatherStatusEnumMap = {
  WeatherStatus.initial: 'initial',
  WeatherStatus.loading: 'loading',
  WeatherStatus.success: 'success',
  WeatherStatus.failure: 'failure',
};

const _$TemperatureUnitsEnumMap = {
  TemperatureUnits.fahrenheit: 'fahrenheit',
  TemperatureUnits.celsius: 'celsius',
};
