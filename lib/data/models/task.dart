import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:todo_app/domain/entities/task_entity.dart';

class Task extends TaskEntity {
  final String title;
  final String description;
  final String id;
  final String date;
  bool? isDone;
  bool? isDeleted;
  bool? isFavorite;

  Task({
    required this.title,
    required this.description,
    required this.id,
    required this.date,
    this.isDone,
    this.isDeleted,
    this.isFavorite,
  }) : super(
            title: title,
            description: description,
            id: id,
            date: date,
            isDone: isDone,
            isDeleted: isDeleted,
            isFavorite: isFavorite);

  Task copyWith({
    String? title,
    String? description,
    String? id,
    String? date,
    bool? isDone,
    bool? isDeleted,
    bool? isFavorite,
  }) {
    return Task(
      title: title ?? this.title,
      description: description ?? this.description,
      id: id ?? this.id,
      date: date ?? this.date,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'id': id});
    result.addAll({'date': date});
    if (isDone != null) {
      result.addAll({'isDone': isDone});
    }
    if (isDeleted != null) {
      result.addAll({'isDeleted': isDeleted});
    }
    if (isFavorite != null) {
      result.addAll({'isFavorite': isFavorite});
    }

    return result;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
      date: map['date'] ?? '',
      isDone: map['isDone'],
      isDeleted: map['isDeleted'],
      isFavorite: map['isFavorite'],
    );
  }
}
