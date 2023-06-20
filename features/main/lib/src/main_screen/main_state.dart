part of 'main_notifier.dart';

class MainState extends Equatable {
  final String email;
  final bool isLoading;

  const MainState({
    required this.email,
    required this.isLoading,
  });

  MainState copyWith({
    String? email,
    bool? isLoading,
  }) {
    return MainState(
      email: email ?? this.email,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [
        email,
        isLoading,
      ];
}
