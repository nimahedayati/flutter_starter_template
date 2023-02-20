import 'package:flutter_starter_template/data/responses/base_response.dart';

class HomeResponse extends BaseResponse {
  HomeDataResponse? data;

  HomeResponse(this.data);

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      HomeResponse(json['data'] == null ? null : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>))
        ..status = json['status'] as int?
        ..message = json['message'] as String?;
}

class HomeDataResponse {
  List<ServiceResponse>? services;
  List<StoreResponse>? stores;
  List<BannerResponse>? banners;

  HomeDataResponse(this.services, this.stores, this.banners);

  factory HomeDataResponse.fromJson(Map<String, dynamic> json) => HomeDataResponse(
      (json['services'] as List<dynamic>?)?.map((e) => ServiceResponse.fromJson(e as Map<String, dynamic>)).toList(),
      (json['stores'] as List<dynamic>?)?.map((e) => StoreResponse.fromJson(e as Map<String, dynamic>)).toList(),
      (json['banners'] as List<dynamic>?)?.map((e) => BannerResponse.fromJson(e as Map<String, dynamic>)).toList());
}

class ServiceResponse {
  int? id;
  String? title;
  String? image;

  ServiceResponse(this.id, this.title, this.image);

  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      ServiceResponse(json['id'] as int?, json['title'] as String?, json['image'] as String?);
}

class StoreResponse {
  int? id;
  String? title;
  String? image;

  StoreResponse(this.id, this.title, this.image);

  factory StoreResponse.fromJson(Map<String, dynamic> json) =>
      StoreResponse(json['id'] as int?, json['title'] as String?, json['image'] as String?);
}

class BannerResponse {
  int? id;
  String? title;
  String? image;
  String? link;

  BannerResponse(this.id, this.title, this.image, this.link);

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      BannerResponse(json['id'] as int?, json['title'] as String?, json['image'] as String?, json['link'] as String?);
}
