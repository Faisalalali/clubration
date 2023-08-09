class Club {
  String cid;
  bool isAcademic;
  String? name;

  Club({required this.cid, required this.isAcademic, this.name});
  Map<String, dynamic> toMap() {
    return {
      'cid': cid,
      'isAcademic': isAcademic,
      'name': name ?? 'No Name Provided',
    };
  }

  factory Club.fromMap(Map<String, dynamic> map) {
    return Club(
      cid: map['cid'],
      isAcademic: map['isAcademic'],
    );
  }
}
