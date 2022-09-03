import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:crud_flutter_firebase/screen/propertytile.dart';
import 'package:flutter/material.dart';

class PropertyList extends StatefulWidget {
  const PropertyList({Key? key}) : super(key: key);
  @override
  State<PropertyList> createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rent App'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          10.0.heightBox,
          const PropertyTile(),
        ],
      )),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}
