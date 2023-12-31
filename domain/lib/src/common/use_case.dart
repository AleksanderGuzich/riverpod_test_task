part of domain;

abstract class UseCase<Input, Output> {
  Output execute(Input input);
}

abstract class FutureUseCase<Input, Output> {
  Future<Output> execute(Input input);
}

abstract class StreamUseCase<Input, Output> {
  Stream<Output> execute(Input input);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => <Object>[];
}
