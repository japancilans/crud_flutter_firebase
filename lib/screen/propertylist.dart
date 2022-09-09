import 'package:crud_flutter_firebase/screen/propertytile.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyList extends StatefulWidget {
  const PropertyList({Key? key}) : super(key: key);

  @override
  State<PropertyList> createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  CollectionReference property =
      FirebaseFirestore.instance.collection('properties');
  List<String> docIds = [];

  @override
  void initState() {
    getProperties();
    super.initState();
  }

  Future getProperties() async {
    property.get().then((snapshot) => snapshot.docs.forEach((document) {
          docIds.add(document.reference.id);
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rent App'),
      ),
      body: ListView.builder(
          itemCount: docIds.length,
          itemBuilder: (BuildContext context, int index) {
            return PropertyTile(
              collection: property,
              docId: docIds[index],
            );
          }),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
