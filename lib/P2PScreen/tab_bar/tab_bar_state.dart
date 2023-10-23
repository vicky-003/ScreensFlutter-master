part of 'tab_bar_cubit.dart';

class TabBarState extends Equatable {
  final LoadStatus loadDataStatus;

  const TabBarState({
    this.loadDataStatus = LoadStatus.initial,
  });

  @override
  List<Object?> get props => [
        loadDataStatus,
      ];

  TabBarState copyWith({
    LoadStatus? loadDataStatus,
  }) {
    return TabBarState(
      loadDataStatus: loadDataStatus ?? this.loadDataStatus,
    );
  }
}
