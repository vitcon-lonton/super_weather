// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      condition: $enumDecode(_$WeatherConditionEnumMap, json['condition']),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      temperature:
          Temperature.fromJson(json['temperature'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'condition': _$WeatherConditionEnumMap[instance.condition]!,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
      'temperature': instance.temperature,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.clear: 'clear',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.unknown: 'unknown',
};
