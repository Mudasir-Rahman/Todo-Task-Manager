import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class Updatetask implements UseCase<void, TodoTask> {
  final TaskRepository taskRepository;
  Updatetask(this.taskRepository);
  @override
  Future<Either<Failure, void>> call(TodoTask task) async {
    return await taskRepository.updateTask(task);
  }
}
