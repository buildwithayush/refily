abstract class Failure {
  final String message;

  const Failure(this.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No Internet Connection']);
}

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server Error Occured']);
}

class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Local DataBase Error']);
}
