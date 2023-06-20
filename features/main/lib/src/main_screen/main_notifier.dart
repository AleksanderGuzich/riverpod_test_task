import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  final SendEmailUseCase _saveEmailUseCase;

  MainNotifier({required SendEmailUseCase saveEmailUseCase})
      : _saveEmailUseCase = saveEmailUseCase,
        super(
          const MainState(
            email: '',
            isLoading: false,
          ),
        );

  Future<void> sendEmail(String email) async {
    state = state.copyWith(isLoading: true);
    //TODO(Alex G): loading simulation
    await Future.delayed(const Duration(seconds: 2));
    await _saveEmailUseCase.execute(email);
    state = state.copyWith(isLoading: false);
  }
}

final mainProvider = StateNotifierProvider<MainNotifier, MainState>(
  (StateNotifierProviderRef<MainNotifier, MainState> ref) {
    return MainNotifier(
      saveEmailUseCase: appLocator<SendEmailUseCase>(),
    );
  },
);
