import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';

// a class for usecase which is need input
abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

// a class which is not need any input
class NoParams {
  const NoParams();
}
