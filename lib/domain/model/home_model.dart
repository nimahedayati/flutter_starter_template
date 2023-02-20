class HomeModel {
  HomeDataModel data;

  HomeModel(this.data);
}

class HomeDataModel {
  List<ServiceModel> services;
  List<StoreModel> stores;
  List<BannerModel> banners;

  HomeDataModel(this.services, this.stores, this.banners);
}

class ServiceModel {
  int id;
  String title;
  String image;

  ServiceModel(this.id, this.title, this.image);
}

class StoreModel {
  int id;
  String title;
  String image;

  StoreModel(this.id, this.title, this.image);
}

class BannerModel {
  int id;
  String title;
  String image;
  String link;

  BannerModel(this.id, this.title, this.image, this.link);
}
