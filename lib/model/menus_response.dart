class MenusResponse {
  String? message;
  int? statusCode;
  List<Menu>? data;

  MenusResponse({this.message, this.statusCode, this.data});

  MenusResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    if (json['data'] != null) {
      data = <Menu>[];
      json['data'].forEach((v) {
        data!.add( Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['message'] = message;
    data['status_code'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  int? id;
  int? status;
  String? link;
  String? version;
  String? createdAt;
  String? updatedAt;

  Menu(
      {this.id,
      this.status,
      this.link,
      this.version,
      this.createdAt,
      this.updatedAt});

  Menu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    link = json['link'];
    version = json['version'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['status'] = status;
    data['link'] = link;
    data['version'] = version;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
