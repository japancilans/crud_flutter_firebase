import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:crud_flutter_firebase/reusable_component/background_clip.dart';
import 'package:crud_flutter_firebase/utils/theme/colors.dart';

class AdProperty extends StatefulWidget {
  const AdProperty({Key? key}) : super(key: key);

  @override
  State<AdProperty> createState() => _AdPropertyState();
}

class _AdPropertyState extends State<AdProperty> {
  final TextEditingController tenantNameCtr = TextEditingController();
  final TextEditingController addressCtr = TextEditingController();
  final TextEditingController contractCtr = TextEditingController();
  final TextEditingController last_rentCtr = TextEditingController();
  final TextEditingController rentCtr = TextEditingController();
  final TextEditingController propertyCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Property')),
      body: AppBackground(
          child: SingleChildScrollView(
        child: Column(children: [
          TextFormField(
            controller: propertyCtr,
            decoration: InputDecoration(
              labelText: 'Property Name',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          20.0.heightBox,
          TextFormField(
            controller: addressCtr,
            decoration: InputDecoration(
              labelText: 'Property Address',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          20.0.heightBox,
          TextFormField(
            controller: tenantNameCtr,
            decoration: InputDecoration(
              labelText: 'Tenant Name',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          20.0.heightBox,
          TextFormField(
            controller: contractCtr,
            decoration: InputDecoration(
              labelText: 'Contract period',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          20.0.heightBox,
          TextFormField(
            controller: rentCtr,
            decoration: InputDecoration(
              labelText: 'Rent Amount',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
          20.0.heightBox,
          TextFormField(
            controller: last_rentCtr,
            decoration: InputDecoration(
              labelText: 'Last Rent',
              suffixText: '*',
              suffixStyle: const TextStyle(
                color: Colors.red,
              ),
            ),
            validator: _validations.validateFname,
            textCapitalization: TextCapitalization.sentences,
            textInputAction: TextInputAction.next,
          ),
        ]),
      )),
    );
  }
}
