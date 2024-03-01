class UserModelData {
  String? status;
  String? message;
  UserModel? data;

  UserModelData({this.status, this.message, this.data});

  UserModelData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new UserModel.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class UserModel {
  String? userId;
  String? name;
  String? email;
  String? password;
  String? role;
  String? section;
  List<Null>? adminAccessClasses;
  List<Null>? enrolledClasses;
  List<Null>? completedTasks;
  String? refreshToken;
  String? sId;
  String? createdAt;
  String? updatedAt;

  UserModel(
      {this.userId,
        this.name,
        this.email,
        this.password,
        this.role,
        this.section,
        this.adminAccessClasses,
        this.enrolledClasses,
        this.completedTasks,
        this.refreshToken,
        this.sId,
        this.createdAt,
        this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    password = json['password'] ?? "";
    role = json['role'];
    section = json['section'];
    // if (json['adminAccessClasses'] != null) {
    //   adminAccessClasses = <Null>[];
    //   json['adminAccessClasses'].forEach((v) {
    //     adminAccessClasses!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['enrolledClasses'] != null) {
    //   enrolledClasses = <Null>[];
    //   json['enrolledClasses'].forEach((v) {
    //     enrolledClasses!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['completedTasks'] != null) {
    //   completedTasks = <Null>[];
    //   json['completedTasks'].forEach((v) {
    //     completedTasks!.add(new Null.fromJson(v));
    //   });
    // }
    refreshToken = json['refreshToken'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    data['section'] = this.section;
    // if (this.adminAccessClasses != null) {
    //   data['adminAccessClasses'] =
    //       this.adminAccessClasses!.map((v) => v.toJson()).toList();
    // }
    // if (this.enrolledClasses != null) {
    //   data['enrolledClasses'] =
    //       this.enrolledClasses!.map((v) => v.toJson()).toList();
    // }
    // if (this.completedTasks != null) {
    //   data['completedTasks'] =
    //       this.completedTasks!.map((v) => v.toJson()).toList();
    // }
    data['refreshToken'] = this.refreshToken;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
