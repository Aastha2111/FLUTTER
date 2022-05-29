import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference profileList =
      Firestore.instance.collection('ProductInfo');

  String get uid => null;

  Future<void> createUserData(
      String productName, int Price, String status) async {
    return await profileList
        .document(uid)
        .setData({'name': productName, 'price': Price, 'status': status});
  }

  Future updateUserList(String productName, int Price, String status) async {
    return await profileList
        .document(uid)
        .updateData({'name': productName, 'price': Price, 'status': status});
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.getDocuments().then((querySnapshot) {
        querySnapshot.documents.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  getProductsList() {}
}
