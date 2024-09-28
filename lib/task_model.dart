class TaskModel {
  String? todo;
  bool? completed;
  int? userId;

  TaskModel({ this.todo, this.completed, this.userId});

  TaskModel.fromJson(Map<String, dynamic> json) {
    todo = json['todo'];
    completed = json['completed'];
    userId = json['userId'];
  }
}
