import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/core/usecase/usecase.dart';
import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';
import 'package:task_manager/feature/task_manager/domain/repository/task_repository.dart';

class Gettaskbycategory
    implements UseCase<List<TodoTask>, GetTaskByCategoryParams> {
  final TaskRepository taskRepository;
  Gettaskbycategory(this.taskRepository);
  @override
  Future<Either<Failure, List<TodoTask>>> call(
    GetTaskByCategoryParams params,
  ) async {
    return await taskRepository.getAllTasksByCategoryId(params.categoryId);
  }
}

class GetTaskByCategoryParams {
  final String categoryId;

  GetTaskByCategoryParams({required this.categoryId});
}
