part of 'click_to_show_text_cubit.dart';

class ClickToShowTextState extends Equatable {
  final LoadStatus loadDataStatus;
  final List<Textdata> textlist;

  const ClickToShowTextState({
    this.loadDataStatus = LoadStatus.initial,
   this.textlist = const [],
  });

  @override
  List<Object?> get props => [
        loadDataStatus,textlist
      ];

  ClickToShowTextState copyWith({
    LoadStatus? loadDataStatus,
     final List<Textdata>? textlist,
  }) {
    return ClickToShowTextState(
      loadDataStatus: loadDataStatus ?? this.loadDataStatus,
      textlist: textlist ?? this.textlist,
    );
  }
}
