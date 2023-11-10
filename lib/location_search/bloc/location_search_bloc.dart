import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:super_weather/utils/utils.dart';

part 'location_search_bloc.freezed.dart';
part 'location_search_event.dart';
part 'location_search_state.dart';

const _duration = Duration(milliseconds: 300);

class LocationSearchBloc
    extends Bloc<LocationSearchEvent, LocationSearchState> {
  LocationSearchBloc({
    required this.geocodingRepository,
  }) : super(const LocationSearchState.empty()) {
    on<TextChanged>(_onTextChanged, transformer: debounce(_duration));
  }

  final GeocodingRepository geocodingRepository;

  Future<void> _onTextChanged(
      TextChanged event, Emitter<LocationSearchState> emit) async {
    final query = event.text;

    if (query.isEmpty) return emit(const LocationSearchState.empty());

    try {
      emit(const LocationSearchState.loading());
      final results = await geocodingRepository.search(query);
      emit(LocationSearchState.success(results));
    } catch (e, st) {
      emit(LocationSearchState.failure(error: e.toString()));
      addError(e, st);
    }
  }
}
