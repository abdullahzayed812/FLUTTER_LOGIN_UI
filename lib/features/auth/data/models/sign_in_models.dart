class SignInResponseModel {
  String? accessToken;
  String? refreshToken;

  SignInResponseModel(this.accessToken, this.refreshToken);

  SignInResponseModel.fromJson(Map<String, dynamic> json) {
    accessToken = json["access_token"];
    refreshToken = json["refresh_token"];
  }
}

class SignInRequestModel {
  String? email;
  String? password;

  SignInRequestModel(this.email, this.password);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["email"] = email;
    data["password"] = password;

    return data;
  }
}
