import 'package:flutter_starter_template/app/constants.dart';
import 'package:flutter_starter_template/data/responses/authentication_response.dart';
import 'package:flutter_starter_template/data/responses/home_response.dart';
import 'package:flutter_starter_template/domain/model/authentication_model.dart';

import 'package:flutter_starter_template/app/extensions.dart';
import 'package:flutter_starter_template/domain/model/home_model.dart';

extension AuthenticationResponseMapper on AuthenticationResponse? {
  AuthenticationModel toDomain() {
    return AuthenticationModel(this?.customer.toDomain(), this?.contacts.toDomain());
  }
}

extension CustomerResponseMapper on CustomerResponse? {
  CustomerModel toDomain() {
    return CustomerModel(this?.id.orEmpty() ?? Constants.EMPTY, this?.name.orEmpty() ?? Constants.EMPTY,
        this?.numOfNotifications.orZero() ?? Constants.ZERO);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  ContactsModel toDomain() {
    return ContactsModel(
        this?.email.orEmpty() ?? Constants.EMPTY, this?.phone.orEmpty() ?? Constants.EMPTY, this?.link.orEmpty() ?? Constants.EMPTY);
  }
}

extension HomeResponseMapper on HomeResponse? {
  HomeModel toDomain() {
    List<ServiceModel> mappedServices = (this?.data?.services?.map((service) => service.toDomain()) ?? []).toList();
    List<StoreModel> mappedStores = (this?.data?.stores?.map((store) => store.toDomain()) ?? []).toList();
    List<BannerModel> mappedBanners = (this?.data?.banners?.map((bannerAd) => bannerAd.toDomain()) ?? []).toList();

    var data = HomeDataModel(mappedServices, mappedStores, mappedBanners);
    return HomeModel(data);
  }
}

extension ServiceResponseMapper on ServiceResponse? {
  ServiceModel toDomain() {
    return ServiceModel(
        this?.id.orZero() ?? Constants.ZERO, this?.title.orEmpty() ?? Constants.EMPTY, this?.image.orEmpty() ?? Constants.EMPTY);
  }
}

extension StoreResponseMapper on StoreResponse? {
  StoreModel toDomain() {
    return StoreModel(
        this?.id.orZero() ?? Constants.ZERO, this?.title.orEmpty() ?? Constants.EMPTY, this?.image.orEmpty() ?? Constants.EMPTY);
  }
}

extension BannerResponseMapper on BannerResponse? {
  BannerModel toDomain() {
    return BannerModel(this?.id.orZero() ?? Constants.ZERO, this?.title.orEmpty() ?? Constants.EMPTY,
        this?.image.orEmpty() ?? Constants.EMPTY, this?.link.orEmpty() ?? Constants.EMPTY);
  }
}
