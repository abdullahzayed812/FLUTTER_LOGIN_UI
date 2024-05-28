abstract class AppState {}

class AppStateInitial extends AppState {}

class AppStateLoaded extends AppState {
  final bool isDark;

  AppStateLoaded(this.isDark);
}
