import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class Gettaskbypriorityusecase implements UseCase<void, String> {
  final TaskRepository taskRepository;
  Gettaskbypriorityusecase(this.taskRepository);
  @override
  Future<Either<Failure, void>> call(String priority) async {
    return await taskRepository.getTaskByPriority(priority);
  }
}
