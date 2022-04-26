class UserSignInResponse {
  int? statusCode;
  Data? data;
  Token? token;

  UserSignInResponse({this.statusCode, this.data, this.token});

  UserSignInResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
    token = json['token'] != null ?  Token.fromJson(json['token']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status_code'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (token != null) {
      data['token'] = token!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? username;
  String? phone;
  String? emailVerifiedAt;
  String? promoCode;
  int? verify;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.username,
      this.phone,
      this.emailVerifiedAt,
      this.promoCode,
      this.verify,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    username = json['username'];
    phone = json['phone'];
    emailVerifiedAt = json['email_verified_at'];
    promoCode = json['promo_code'];
    verify = json['verify'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['username'] = username;
    data['phone'] = phone;
    data['email_verified_at'] = emailVerifiedAt;
    data['promo_code'] = promoCode;
    data['verify'] = verify;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Token {
  AccessToken? accessToken;
  String? plainTextToken;

  Token({this.accessToken, this.plainTextToken});

  Token.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'] != null
        ?  AccessToken.fromJson(json['accessToken'])
        : null;
    plainTextToken = json['plainTextToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    if (accessToken != null) {
      data['accessToken'] = accessToken!.toJson();
    }
    data['plainTextToken'] = plainTextToken;
    return data;
  }
}

class AccessToken {
  String? name;
  List<String>? abilities;
  int? tokenableId;
  String? tokenableType;
  String? updatedAt;
  String? createdAt;
  int? id;

  AccessToken(
      {this.name,
      this.abilities,
      this.tokenableId,
      this.tokenableType,
      this.updatedAt,
      this.createdAt,
      this.id});

  AccessToken.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    abilities = json['abilities'].cast<String>();
    tokenableId = json['tokenable_id'];
    tokenableType = json['tokenable_type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['name'] = name;
    data['abilities'] = abilities;
    data['tokenable_id'] = tokenableId;
    data['tokenable_type'] = tokenableType;
    data['updated_at'] = updatedAt;
    data['created_at'] = createdAt;
    data['id'] = id;
    return data;
  }
}
