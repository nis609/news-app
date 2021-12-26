import 'package:freezed_annotation/freezed_annotation.dart';

part 'appstate.freezed.dart';

@freezed
class AppState<T> with _$AppState<T> {
  factory AppState.initial() = _AppStateInitial;
  factory AppState.loading() = _AppStateLoading;
  factory AppState.data(T data) = AppStateData;
  factory AppState.error(Object e) = AppStateError;

}
