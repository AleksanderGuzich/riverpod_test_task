part of main_feature;

abstract class MainFeatureRepository {
  Future<void> sendEmail({
    required String email,
  });
}
