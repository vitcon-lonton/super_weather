// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureImplCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$TemperatureImplCopyWith(
          _$TemperatureImpl value, $Res Function(_$TemperatureImpl) then) =
      __$$TemperatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$TemperatureImplCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$TemperatureImpl>
    implements _$$TemperatureImplCopyWith<$Res> {
  __$$TemperatureImplCopyWithImpl(
      _$TemperatureImpl _value, $Res Function(_$TemperatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$TemperatureImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureImpl implements _Temperature {
  const _$TemperatureImpl({required this.value});

  factory _$TemperatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureImplFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'Temperature(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      __$$TemperatureImplCopyWithImpl<_$TemperatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureImplToJson(
      this,
    );
  }
}

abstract class _Temperature implements Temperature {
  const factory _Temperature({required final double value}) = _$TemperatureImpl;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$TemperatureImpl.fromJson;

  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$TemperatureImplCopyWith<_$TemperatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  weather_repository.WeatherCondition get condition =>
      throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Temperature get temperature => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {weather_repository.WeatherCondition condition,
      DateTime lastUpdated,
      Temperature temperature,
      double latitude,
      double longitude,
      Location? location});

  $TemperatureCopyWith<$Res> get temperature;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? lastUpdated = null,
    Object? temperature = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as weather_repository.WeatherCondition,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TemperatureCopyWith<$Res> get temperature {
    return $TemperatureCopyWith<$Res>(_value.temperature, (value) {
      return _then(_value.copyWith(temperature: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {weather_repository.WeatherCondition condition,
      DateTime lastUpdated,
      Temperature temperature,
      double latitude,
      double longitude,
      Location? location});

  @override
  $TemperatureCopyWith<$Res> get temperature;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
    Object? lastUpdated = null,
    Object? temperature = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? location = freezed,
  }) {
    return _then(_$WeatherImpl(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as weather_repository.WeatherCondition,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as Temperature,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.condition,
      required this.lastUpdated,
      required this.temperature,
      required this.latitude,
      required this.longitude,
      required this.location});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  final weather_repository.WeatherCondition condition;
  @override
  final DateTime lastUpdated;
  @override
  final Temperature temperature;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final Location? location;

  @override
  String toString() {
    return 'Weather(condition: $condition, lastUpdated: $lastUpdated, temperature: $temperature, latitude: $latitude, longitude: $longitude, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, condition, lastUpdated,
      temperature, latitude, longitude, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final weather_repository.WeatherCondition condition,
      required final DateTime lastUpdated,
      required final Temperature temperature,
      required final double latitude,
      required final double longitude,
      required final Location? location}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  weather_repository.WeatherCondition get condition;
  @override
  DateTime get lastUpdated;
  @override
  Temperature get temperature;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
