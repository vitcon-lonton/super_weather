// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unitsToggled,
    required TResult Function(Location location) locationChanged,
    required TResult Function() refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unitsToggled,
    TResult? Function(Location location)? locationChanged,
    TResult? Function()? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unitsToggled,
    TResult Function(Location location)? locationChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitsToggled value) unitsToggled,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(RefreshRequested value) refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnitsToggled value)? unitsToggled,
    TResult? Function(LocationChanged value)? locationChanged,
    TResult? Function(RefreshRequested value)? refreshRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitsToggled value)? unitsToggled,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnitsToggledImplCopyWith<$Res> {
  factory _$$UnitsToggledImplCopyWith(
          _$UnitsToggledImpl value, $Res Function(_$UnitsToggledImpl) then) =
      __$$UnitsToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnitsToggledImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$UnitsToggledImpl>
    implements _$$UnitsToggledImplCopyWith<$Res> {
  __$$UnitsToggledImplCopyWithImpl(
      _$UnitsToggledImpl _value, $Res Function(_$UnitsToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnitsToggledImpl implements UnitsToggled {
  _$UnitsToggledImpl();

  @override
  String toString() {
    return 'WeatherEvent.unitsToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnitsToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unitsToggled,
    required TResult Function(Location location) locationChanged,
    required TResult Function() refreshRequested,
  }) {
    return unitsToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unitsToggled,
    TResult? Function(Location location)? locationChanged,
    TResult? Function()? refreshRequested,
  }) {
    return unitsToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unitsToggled,
    TResult Function(Location location)? locationChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (unitsToggled != null) {
      return unitsToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitsToggled value) unitsToggled,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(RefreshRequested value) refreshRequested,
  }) {
    return unitsToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnitsToggled value)? unitsToggled,
    TResult? Function(LocationChanged value)? locationChanged,
    TResult? Function(RefreshRequested value)? refreshRequested,
  }) {
    return unitsToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitsToggled value)? unitsToggled,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (unitsToggled != null) {
      return unitsToggled(this);
    }
    return orElse();
  }
}

abstract class UnitsToggled implements WeatherEvent {
  factory UnitsToggled() = _$UnitsToggledImpl;
}

/// @nodoc
abstract class _$$LocationChangedImplCopyWith<$Res> {
  factory _$$LocationChangedImplCopyWith(_$LocationChangedImpl value,
          $Res Function(_$LocationChangedImpl) then) =
      __$$LocationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$LocationChangedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$LocationChangedImpl>
    implements _$$LocationChangedImplCopyWith<$Res> {
  __$$LocationChangedImplCopyWithImpl(
      _$LocationChangedImpl _value, $Res Function(_$LocationChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$LocationChangedImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$LocationChangedImpl implements LocationChanged {
  _$LocationChangedImpl(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'WeatherEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationChangedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationChangedImplCopyWith<_$LocationChangedImpl> get copyWith =>
      __$$LocationChangedImplCopyWithImpl<_$LocationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unitsToggled,
    required TResult Function(Location location) locationChanged,
    required TResult Function() refreshRequested,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unitsToggled,
    TResult? Function(Location location)? locationChanged,
    TResult? Function()? refreshRequested,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unitsToggled,
    TResult Function(Location location)? locationChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitsToggled value) unitsToggled,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(RefreshRequested value) refreshRequested,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnitsToggled value)? unitsToggled,
    TResult? Function(LocationChanged value)? locationChanged,
    TResult? Function(RefreshRequested value)? refreshRequested,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitsToggled value)? unitsToggled,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class LocationChanged implements WeatherEvent {
  factory LocationChanged(final Location location) = _$LocationChangedImpl;

  Location get location;
  @JsonKey(ignore: true)
  _$$LocationChangedImplCopyWith<_$LocationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshRequestedImplCopyWith<$Res> {
  factory _$$RefreshRequestedImplCopyWith(_$RefreshRequestedImpl value,
          $Res Function(_$RefreshRequestedImpl) then) =
      __$$RefreshRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshRequestedImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$RefreshRequestedImpl>
    implements _$$RefreshRequestedImplCopyWith<$Res> {
  __$$RefreshRequestedImplCopyWithImpl(_$RefreshRequestedImpl _value,
      $Res Function(_$RefreshRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshRequestedImpl implements RefreshRequested {
  _$RefreshRequestedImpl();

  @override
  String toString() {
    return 'WeatherEvent.refreshRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unitsToggled,
    required TResult Function(Location location) locationChanged,
    required TResult Function() refreshRequested,
  }) {
    return refreshRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unitsToggled,
    TResult? Function(Location location)? locationChanged,
    TResult? Function()? refreshRequested,
  }) {
    return refreshRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unitsToggled,
    TResult Function(Location location)? locationChanged,
    TResult Function()? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnitsToggled value) unitsToggled,
    required TResult Function(LocationChanged value) locationChanged,
    required TResult Function(RefreshRequested value) refreshRequested,
  }) {
    return refreshRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnitsToggled value)? unitsToggled,
    TResult? Function(LocationChanged value)? locationChanged,
    TResult? Function(RefreshRequested value)? refreshRequested,
  }) {
    return refreshRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnitsToggled value)? unitsToggled,
    TResult Function(LocationChanged value)? locationChanged,
    TResult Function(RefreshRequested value)? refreshRequested,
    required TResult orElse(),
  }) {
    if (refreshRequested != null) {
      return refreshRequested(this);
    }
    return orElse();
  }
}

abstract class RefreshRequested implements WeatherEvent {
  factory RefreshRequested() = _$RefreshRequestedImpl;
}

WeatherState _$WeatherStateFromJson(Map<String, dynamic> json) {
  return _WeatherState.fromJson(json);
}

/// @nodoc
mixin _$WeatherState {
  WeatherStatus get status => throw _privateConstructorUsedError;
  TemperatureUnits get temperatureUnits => throw _privateConstructorUsedError;
  Weather? get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {WeatherStatus status,
      TemperatureUnits temperatureUnits,
      Weather? weather});

  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? temperatureUnits = null,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      temperatureUnits: null == temperatureUnits
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get weather {
    if (_value.weather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.weather!, (value) {
      return _then(_value.copyWith(weather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherStatus status,
      TemperatureUnits temperatureUnits,
      Weather? weather});

  @override
  $WeatherCopyWith<$Res>? get weather;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? temperatureUnits = null,
    Object? weather = freezed,
  }) {
    return _then(_$WeatherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeatherStatus,
      temperatureUnits: null == temperatureUnits
          ? _value.temperatureUnits
          : temperatureUnits // ignore: cast_nullable_to_non_nullable
              as TemperatureUnits,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherStateImpl implements _WeatherState {
  _$WeatherStateImpl(
      {required this.status, required this.temperatureUnits, this.weather});

  factory _$WeatherStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherStateImplFromJson(json);

  @override
  final WeatherStatus status;
  @override
  final TemperatureUnits temperatureUnits;
  @override
  final Weather? weather;

  @override
  String toString() {
    return 'WeatherState(status: $status, temperatureUnits: $temperatureUnits, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.temperatureUnits, temperatureUnits) ||
                other.temperatureUnits == temperatureUnits) &&
            (identical(other.weather, weather) || other.weather == weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, temperatureUnits, weather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherStateImplToJson(
      this,
    );
  }
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState(
      {required final WeatherStatus status,
      required final TemperatureUnits temperatureUnits,
      final Weather? weather}) = _$WeatherStateImpl;

  factory _WeatherState.fromJson(Map<String, dynamic> json) =
      _$WeatherStateImpl.fromJson;

  @override
  WeatherStatus get status;
  @override
  TemperatureUnits get temperatureUnits;
  @override
  Weather? get weather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
