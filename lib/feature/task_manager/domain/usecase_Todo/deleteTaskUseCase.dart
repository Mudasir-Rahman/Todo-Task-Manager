import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class Deletetask implements UseCase<void, String> {
  final TaskRepository taskRepository;
  Deletetask(this.taskRepository);
  @override
  Future<Either<Failure, void>> call(String id) async {
    return await taskRepository.deleteTask(id);
  }
}
