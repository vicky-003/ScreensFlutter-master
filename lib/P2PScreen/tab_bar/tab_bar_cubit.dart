import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/load_status.dart';
import 'tab_bar_navigator.dart';

part 'tab_bar_state.dart';

class TabBarCubit extends Cubit<TabBarState> {
  final TabBarNavigator navigator;

  TabBarCubit({
    required this.navigator,
  }) : super(const TabBarState());

  Future<void> loadInitialData() async {
    emit(state.copyWith(loadDataStatus: LoadStatus.initial));
    try {
      //Todo: add API calls
      emit(state.copyWith(loadDataStatus: LoadStatus.success));
    } catch (e, s) {
      //Todo: should print exception here
      emit(state.copyWith(loadDataStatus: LoadStatus.failure));
    }
  }

  openTXscreen(){
    navigator.openPage(routeName: '/TextPage');
  }
}
