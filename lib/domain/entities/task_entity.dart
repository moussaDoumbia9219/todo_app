import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  final String title;
  final String description;
  final String id;
  final String date;
  bool? isDone;
  bool? isDeleted;
  bool? isFavorite;

  TaskEntity(
      {required this.title,
      required this.description,
      required this.id,
      required this.date,
      this.isDone,
      this.isDeleted,
      this.isFavorite}) {
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
    isFavorite = isFavorite ?? false;
  }

  TaskEntity copyWith(
      {String? title,
      String? description,
      String? id,
      String? date,
      bool? isDone,
      bool? isDeleted,
      bool? isFavorite}) {
    return TaskEntity(
      title: title ?? this.title,
      description: title ?? this.description,
      id: this.id,
      date: this.date,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'id': id,
      'date': date,
      'isDone': isDone,
      'isDeleted': isDeleted,
      'isFavorite': isFavorite,
    };
  }

  factory TaskEntity.fromMap(Map<String, dynamic> map) {
    return TaskEntity(
        title: map['title'] ?? '',
        description: map['description'] ?? '',
        id: map['id'] ?? '',
        date: map['date'] ?? '',
        isDone: map['isDone'],
        isDeleted: map['isDeleted'],
        isFavorite: map['isFavorite']);
  }

  @override
  List<Object?> get props => [
        title,
        description,
        id,
        date,
        isDone,
        isDeleted,
        isFavorite,
      ];
}
