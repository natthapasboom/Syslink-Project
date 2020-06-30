class User {
  int userId;
  String name;
  String surname;
  String username;
  String password;
  String department;
  String profileImg;
  String refid;
  int roleid;
  String createdAt;
  String updatedAt;

  User(
      {this.userId,
      this.name,
      this.surname,
      this.username,
      this.password,
      this.department,
      this.profileImg,
      this.refid,
      this.roleid,
      this.createdAt,
      this.updatedAt});

User.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    surname = json['surname'];
    username = json['username'];
    password = json['password'];
    department = json['department'];
    refid = json['ref_id'];
    roleid = json['role_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['username'] = this.username;
    data['password'] = this.password;
    data['department'] = this.department;
    data['ref_id'] = this.refid;
    data['role_id'] = this.roleid;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
