part of 'location_search_bloc.dart';

@freezed
sealed class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState.empty() = _Empty;
  const factory LocationSearchState.loading() = _Loading;
  const factory LocationSearchState.success(List<Location> items) = _Success;
  const factory LocationSearchState.failure({required String error}) = _Failure;
}
