part of main_feature;

class SendEmailUseCase extends FutureUseCase<String, void> {
  final MainFeatureRepository _mainFeatureRepository;

  SendEmailUseCase({
    required MainFeatureRepository mainFeatureRepository,
  }) : _mainFeatureRepository = mainFeatureRepository;

  @override
  Future<void> execute(String input) async {
    await _mainFeatureRepository.sendEmail(email: input);
  }
}
