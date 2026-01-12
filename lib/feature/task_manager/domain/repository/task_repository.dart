import 'package:dartz/dartz.dart';
import 'package:task_manager/core/error/failure.dart';
import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';

abstract class TaskRepository {
  // Use Either so we can catch database/network errors
  Future<Either<Failure, void>> addTask(TodoTask task);
  Future<Either<Failure, void>> updateTask(TodoTask task);
  Future<Either<Failure, void>> deleteTask(
    String id,
  ); // Passing ID is usually better for delete

  // CHANGE THESE: From List<String> to List<Task>
  Future<Either<Failure, List<TodoTask>>> getAllTask();
  Future<Either<Failure, List<TodoTask>>> getAllTasksByCategoryId(
    String categoryId,
  );

  Future<Either<Failure, void>> markTaskAsCompleted(String taskId);
  Future<Either<Failure, List<TodoTask>>> getTaskByPriority(String priority);
}
