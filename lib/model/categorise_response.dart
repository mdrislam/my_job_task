class CategoriseResponse {
  String? message;
  int? statusCode;
  List<Category>? data;

  CategoriseResponse({this.message, this.statusCode, this.data});

  CategoriseResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    if (json['data'] != null) {
      data = <Category>[];
      json['data'].forEach((v) {
        data!.add( Category.fromJson(v));
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

class Category {
  int? id;
  String? link;
  int? status;
  String? createdAt;
  String? updatedAt;

  Category({this.id, this.link, this.status, this.createdAt, this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['link'] = link;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
