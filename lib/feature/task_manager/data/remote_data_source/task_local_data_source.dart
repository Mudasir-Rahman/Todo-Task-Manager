import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';

abstract class TaskLocalDataSource {
  Future<void> addTask(TodoTask task);
  Future<void> updateTask(TodoTask task);
  Future<void> deleteTask(String id);
  Future<List<TodoTask>> getAllTask();
  Future<List<TodoTask>> getAllTasksByCategoryId(String categoryId);
  Future<void> markTaskAsCompleted(String taskId);
  Future<List<TodoTask>> getTaskByPriority(String priority);
}
