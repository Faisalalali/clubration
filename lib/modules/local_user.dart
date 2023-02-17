class LocalUser {
  String uid;
  String displayName;

  LocalUser({required this.uid, required this.displayName});
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'displayName': displayName,
    };
  }

  factory LocalUser.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;
    return LocalUser(
      uid: map['uid'],
      displayName: map['displayName'],
    );
  }
}
