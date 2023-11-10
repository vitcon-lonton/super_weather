import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.g.dart';
part 'location.freezed.dart';

/// {@template weather}
/// An object which represents a specific geocoding.
/// {@endtemplate}
@freezed
class Location with _$Location {
  const factory Location({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    String? country,
    @JsonKey(name: 'country_id') int? countryId,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
