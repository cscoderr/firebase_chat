part of 'home_cubit.dart';

enum HomeStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default(<UserModel>[]) List<UserModel> users,
  }) = _HomeState;
}
