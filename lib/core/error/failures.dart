abstract class Failure {
  Failure(this.message);
  String message;
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class LocalFailure extends Failure {
  LocalFailure(super.message);
}
