import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_status.freezed.dart';

@freezed
class AppStatus with _$AppStatus {
  const factory AppStatus.loading() = Loading;
  const factory AppStatus.success() = Success;
  const factory AppStatus.error(String error) = Error;
  const factory AppStatus.initial() = Initial;
}
