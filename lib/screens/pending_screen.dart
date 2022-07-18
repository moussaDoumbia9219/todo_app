import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

import '../blocs/bloc_exports.dart';
import '../widgets/tasks_list.dart';

class PendingScreen extends StatelessWidget {
  PendingScreen({Key? key}) : super(key: key);
  static const id = 'task_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.pendingTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text(
                    '${state.pendingTasks.length} Pending | ${state.completedTasks.length} Completed'),
              ),
            ),
            TasksList(tasksList: tasksList)
          ],
        );
      },
    );
  }
}
