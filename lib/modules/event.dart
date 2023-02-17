import 'club.dart';

class Event {
  String eid;
  String? title;
  int term;
  Club creator;
  String? discription;
  String? type; // 0: Tournamnet, 1: Gathering, 2: Workshop, 3: Seminar/Webinar, 5: Help session, 6: Other

  Event({
    required this.eid,
    required this.title,
    required this.term,
    required this.creator,
    this.discription,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'eid': eid,
      'title': title ?? '',
      'term': term,
      'creator': creator.toMap(),
      'discription': discription ?? '',
      'type': type ?? '',
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;
    return Event(
      eid: map['eid'],
      title: map['title'],
      term: map['term'],
      creator: Club.fromMap(map['creator']),
      discription: map['discription'],
      type: map['type'],
    );
  }
}
