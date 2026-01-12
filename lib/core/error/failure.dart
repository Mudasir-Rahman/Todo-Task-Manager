abstract class Failure {
  final String message;
  const Failure(this.message);
}

// Example of a concrete failure
class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}
