import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class Marktaskascompleteusecase implements UseCase<void, String> {
  final TaskRepository taskRepository;
  Marktaskascompleteusecase(this.taskRepository);
  @override
  Future<Either<Failure, void>> call(String taskId) async {
    return await taskRepository.markTaskAsCompleted(taskId);
  }
}
