import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:userprofile_demo/DatabaseManager/DatabaseManager.dart';
import 'package:userprofile_demo/Services/AuthenticationService.dart';

// aastha-19csu003
//JSMJ

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final AuthenticationService _auth = AuthenticationService();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _scoreController = TextEditingController();

  List ProductProfilesList = [];

  String ProductID = "";

  @override
  void initState() {
    super.initState();
    fetchProductInfo();
    fetchDatabaseList();
  }

  fetchProductInfo() async {
    FirebaseProduct getProduct = await FirebaseAuth.instance.currentProduct();
    ProductID = getProduct.uid;
  }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getProductsList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        ProductProfilesList = resultant;
      });
    }
  }

  updateData(String ProductName, int Price, String status) async {
    await DatabaseManager().updateProductList(ProductName, Price, status);
    fetchDatabaseList();
  }

  @override
  Widget build(BuildContext context) {
    var length;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          automaticallyImplyLeading: false,
          actions: [
            ElevatedButton(
              onPressed: () {
                openDialogueBox(context);
              },
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              // color: Colors.deepPurple,
            ),
            ElevatedButton(
              onPressed: () async {
                await _auth.signOut().then((result) {
                  Navigator.of(context).pop(true);
                });
              },
              child: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              // color: Colors.deepPurple,
            )
          ],
        ),
        body: Container(
            child: ListView.builder(
                itemCount: ProductList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(ProductList[index]['name']),
                      subtitle: Text(ProductList[index]['gender']),
                      leading: FittedBox(
                        child: Image(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/I/612ytK4luvL._SX679_.jpg'),
                          height: 100,
                          width: 100,
                        ),
                      ),
                      trailing: Text('${ProductList[index]['score']}'),
                    ),
                  );
                })));
  }

  openDialogueBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Edit Product Details'),
            content: Container(
              height: 150,
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  TextField(
                    controller: _genderController,
                    decoration: InputDecoration(hintText: 'Gender'),
                  ),
                  TextField(
                    controller: _scoreController,
                    decoration: InputDecoration(hintText: 'Score'),
                  )
                ],
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  submitAction(context);
                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              )
            ],
          );
        });
  }

  submitAction(BuildContext context) {
    updateData(_nameController.text, _genderController.text,
        int.parse(_scoreController.text), ProductID);
    _nameController.clear();
    _genderController.clear();
    _scoreController.clear();
  }
}

class ProductList {}

class FirebaseProduct {
  String get uid => null;
}
