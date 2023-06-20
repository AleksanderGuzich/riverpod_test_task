part of main_feature;

class SaveEmailUseCase extends FutureUseCase<MainModel, void> {
  final MainFeatureRepository _mainFeatureRepository;

  SaveEmailUseCase({
    required MainFeatureRepository mainFeatureRepository,
  }) : _mainFeatureRepository = mainFeatureRepository;

  @override
  Future<void> execute(MainModel input) async {
    await _mainFeatureRepository.saveEmail(mainModel: input);
  }
}
