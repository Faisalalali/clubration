import 'local_user.dart';

class Task {
  int tid;
  String title;
  List<LocalUser> assignedTo;
  bool hasAttachment;
  String attachment;

  Task({required this.tid, required this.title, required this.assignedTo, required this.hasAttachment, required this.attachment});

  Map<String, dynamic> toMap() {
    return {
      'tid': tid,
      'title': title,
      'assignedTo': assignedTo.map((x) => x.toMap()).toList(),
      'hasAttachment': hasAttachment,
      'attachment': attachment,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      tid: map['tid'],
      title: map['title'],
      assignedTo: List<LocalUser>.from(map['assignedTo']?.map((x) => LocalUser.fromMap(x))),
      hasAttachment: map['hasAttachment'],
      attachment: map['attachment'],
    );
  }
}
