class AuthenticationModel {
  CustomerModel? customer;
  ContactsModel? contacts;

  AuthenticationModel(this.customer, this.contacts);
}

class CustomerModel {
  String id;
  String name;
  int numOfNotifications;

  CustomerModel(this.id, this.name, this.numOfNotifications);
}

class ContactsModel {
  String email;
  String phone;
  String link;

  ContactsModel(this.email, this.phone, this.link);
}
