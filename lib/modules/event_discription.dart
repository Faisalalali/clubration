import 'dart:ui';
import 'task.dart';

class EventDiscription {
  String edid;
  String? location;
  DateTime? startTime;
  DateTime? endTime;
  List<Task>? tasks;
  Image? image;

  EventDiscription({
    required this.edid,
    this.location,
    this.startTime,
    this.endTime,
    this.tasks,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'edid': edid,
      'location': location ?? '',
      'startTime': startTime?.millisecondsSinceEpoch,
      'endTime': endTime?.millisecondsSinceEpoch,
      'tasks': tasks?.map((x) => x.toMap()).toList(),
      'image': image,
    };
  }

  factory EventDiscription.fromMap(Map<String, dynamic> map) {
    return EventDiscription(
      edid: map['edid'],
      location: map['location'],
      startTime: DateTime.fromMillisecondsSinceEpoch(map['startTime']),
      endTime: DateTime.fromMillisecondsSinceEpoch(map['endTime']),
      tasks: List<Task>.from(map['tasks']?.map((x) => Task.fromMap(x))),
      image: map['image'],
    );
  }
}
