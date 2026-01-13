import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class GetAllTask implements UseCase<List<TodoTask>, NoParams> {
  final TaskRepository taskRepository;
  GetAllTask(this.taskRepository);
  @override
  Future<Either<Failure, List<TodoTask>>> call(NoParams params) async {
    return await taskRepository.getAllTask();
  }
}
