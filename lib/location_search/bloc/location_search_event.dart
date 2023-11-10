part of 'location_search_bloc.dart';

@freezed
sealed class LocationSearchEvent with _$LocationSearchEvent {
  const factory LocationSearchEvent.textChanged({
    required String text,
  }) = TextChanged;
}
