// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes, always_use_package_imports

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) {
    return events.debounceTime(duration).switchMap(mapper);
  };
}
