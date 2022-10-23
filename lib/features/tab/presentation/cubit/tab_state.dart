part of 'tab_cubit.dart';

@freezed
class TabState with _$TabState {
  const factory TabState({
    @Default(1) int tabIndex,
  }) = _TabState;
}
