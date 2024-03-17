class Course {
  String? classId;
  String? courseName;
  String? courseCode;
  String? facultyName;
  String? facultyInitial;
  String? sId;
  String? createdAt;
  String? updatedAt;

  Course(
      {this.classId,
        this.courseName,
        this.courseCode,
        this.facultyName,
        this.facultyInitial,
        this.sId,
        this.createdAt,
        this.updatedAt});

  Course.fromJson(Map<String, dynamic> json) {
    classId = json['classId'];
    courseName = json['courseName'];
    courseCode = json['courseCode'];
    facultyName = json['facultyName'];
    facultyInitial = json['facultyInitial'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['classId'] = this.classId;
    data['courseName'] = this.courseName;
    data['courseCode'] = this.courseCode;
    data['facultyName'] = this.facultyName;
    data['facultyInitial'] = this.facultyInitial;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}