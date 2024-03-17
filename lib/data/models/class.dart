class Class {
  String? sId;
  String? className;
  String? section;
  List<String>? participants;
  String? classId;
  String? createdAt;
  String? updatedAt;

  Class(
      {this.sId,
        this.className,
        this.section,
        this.participants,
        this.classId,
        this.createdAt,
        this.updatedAt});

  Class.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    className = json['className'];
    section = json['section'];
    participants = json['participants'].cast<String>();
    classId = json['classId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['className'] = this.className;
    data['section'] = this.section;
    data['participants'] = this.participants;
    data['classId'] = this.classId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}