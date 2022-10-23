import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_state.dart';
part 'tab_cubit.freezed.dart';

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(const TabState());

  void onTabChanged(int index) {
    emit(state.copyWith(tabIndex: index));
  }
}
