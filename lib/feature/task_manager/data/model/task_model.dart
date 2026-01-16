import 'package:task_manager/feature/task_manager/domain/entity/entity.dart';

class TaskModel extends TodoTask {
  TaskModel({
    required String id,
    required String title,
    required String description,
    required DateTime dueDate,
    required bool isCompleted,
    required String priority,
    required String categoryId,
  }) : super(
         id: id,
         title: title,
         description: description,
         dueDate: dueDate,
         isCompleted: isCompleted,
         priority: priority,
         categoryId: categoryId,
       );

  /// Convert DB → Model
  factory TaskModel.fromEntity(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      dueDate: map['dueDate'],
      isCompleted: map[' isCompleted'],
      priority: map[' priority'],
      categoryId: map['categoryId'],
    );
  }

  /// Convert Model → DB
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate,
      'isCompleted': isCompleted,
      'priority': priority,
      'categoryId': categoryId,
    };
  }
}
