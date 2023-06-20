import 'package:core/core.dart';
import 'package:domain/domain.dart';
import '../repositories/main_feature_repository_impl.dart';

final DataDI dataDI = DataDI();

class DataDI {
  Future<void> init() async {
    _initRepositories();
    _initUseCases();
  }

  void _initRepositories() {
    appLocator.registerLazySingleton<MainFeatureRepository>(
      () => MainFeatureRepositoryImpl(),
    );
  }

  void _initUseCases() {
    appLocator.registerSingleton<SendEmailUseCase>(
      SendEmailUseCase(
        mainFeatureRepository: appLocator<MainFeatureRepository>(),
      ),
    );
  }
}
