import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/load_status.dart';
import 'click_to_show_text_navigator.dart';
import 'model/item_model.dart';

part 'click_to_show_text_state.dart';

class ClickToShowTextCubit extends Cubit<ClickToShowTextState> {
  final ClickToShowTextNavigator navigator;

  ClickToShowTextCubit({
    required this.navigator,
  }) : super(const ClickToShowTextState());

  Future<void> loadInitialData() async {
    emit(state.copyWith(loadDataStatus: LoadStatus.loading));
    try {
      await Future.delayed(const Duration(seconds: 5));
      getItemData();
      emit(state.copyWith(loadDataStatus: LoadStatus.success));
    } catch (e, s) {
      //Todo: should print exception here
      emit(state.copyWith(loadDataStatus: LoadStatus.failure));
    }
  }

  Future<void> getItemData() async {
    emit(state.copyWith(textlist : [
      Textdata("공지", "공지사항입니다", "2023-05-16",
          "공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.",false),
      Textdata("공지", "MSQ 코인 바이낸스 상장 성공",
          "2023-05-16", "공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.",false),
      Textdata("공지", "앱 오픈 기념 이벤트",
          "2023-05-16", "공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.\n공지사항 내용입니다. 공지사항 내용입니다.",false),
    ]));
  }

  void toggleDescription(int index) {

    final currentState = state;
    final updatedNewsList = List<Textdata>.from(currentState.textlist);

    if (index >= 0 && index < updatedNewsList.length) {
      updatedNewsList[index] = updatedNewsList[index].copyWith(
        isDescriptionVisible: !updatedNewsList[index].isDescriptionVisible,
      );

      emit(currentState.copyWith(textlist: updatedNewsList));
    }
  }

}
