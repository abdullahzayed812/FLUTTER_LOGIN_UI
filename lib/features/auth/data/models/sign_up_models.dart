class SignUpResponseModel {
  String? email;
  String? password;
  String? name;
  String? avatar;
  String? role;
  int? id;
  String? creationAt;
  String? updatedAt;

  SignUpResponseModel(
      this.name, this.email, this.password, this.avatar, this.role, this.id, this.creationAt, this.updatedAt);

  SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    avatar = json['avatar'];
    role = json['role'];
    id = json['id'];
    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
  }
}

class SignUpRequestModel {
  String? email;
  String? password;
  String? name;
  String? avatar;

  SignUpRequestModel(this.name, this.email, this.password, this.avatar);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};

    data['email'] = email;
    data['password'] = password;
    data['name'] = name;
    data['avatar'] = avatar;

    return data;
  }
}
