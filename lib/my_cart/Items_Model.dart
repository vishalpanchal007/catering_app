import 'dart:ui';

class ItemsModel {
  String Image;
  String Name;
  String Details;
  int price;
  int quantity;

  ItemsModel(
      {required this.Image,
      required this.Name,
      required this.Details,
      required this.price,
      required this.quantity});

  factory ItemsModel.fromMap({required Map<String, dynamic> data}) {
    return ItemsModel(
        Image: data['Image'],
        Name: data['Name'],
        Details: data['Details'],
        price: data['price'],
        quantity: data['quantity']);
  }

}
