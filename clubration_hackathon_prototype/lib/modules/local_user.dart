import 'club.dart';
import 'constants.dart';

class LocalUser {
  int userType = UserLevel.User;
  // Basic user
  String uid;
  String displayName;
  List<Club>? memberOf;
  // Moderator
  bool isModerator = false;
  Map<String, Club>? moderates;
  // Vice President
  bool isVicePresident = false;
  // President
  bool isPresident = false;
  Map<String, Club>? presidentOf;

  LocalUser({
    required this.uid,
    required this.displayName,
    this.memberOf,
    this.isModerator = false,
    this.moderates,
    this.isVicePresident = false,
    this.isPresident = false,
    this.presidentOf,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
      'memberOf': memberOf?.map((x) => x.toMap()).toList(),
      'isModerator': isModerator,
      'moderates': moderates?.map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
      'isVicePresident': isVicePresident,
      'isPresident': isPresident,
      'presidentOf': presidentOf?.map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
    };
  }

  factory LocalUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return LocalUser(uid: '', displayName: '');
    return LocalUser(
      uid: map['uid'],
      displayName: map['displayName'],
      memberOf: List<Club>.from(map['memberOf']?.map((x) => Club.fromMap(x))),
      isModerator: map['isModerator'],
      moderates: Map<String, Club>.from(map['moderates']?.map((k, v) => MapEntry<String, Club>(k, Club.fromMap(v)))),
      isVicePresident: map['isVicePresident'],
      isPresident: map['isPresident'],
      presidentOf:
          Map<String, Club>.from(map['presidentOf']?.map((k, v) => MapEntry<String, Club>(k, Club.fromMap(v)))),
    );
  }
}
