import 'package:flutter/material.dart';
import 'package:todo_app/data/models/task.dart';

import '../blocs/bloc_exports.dart';
import '../widgets/tasks_list.dart';

class CompletedTaskScreen extends StatelessWidget {
  CompletedTaskScreen({Key? key}) : super(key: key);
  static const id = 'task_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.completedTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text('${tasksList.length} Tasks'),
              ),
            ),
            TasksList(tasksList: tasksList)
          ],
        );
      },
    );
  }
}
