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
  final TextEditingController NameCtr = TextEditingController();
  final TextEditingController addressLineCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Property')),
      body: AppBackground(
          child: SingleChildScrollView(
        child: Column(children: [
          TextFormField(
            controller: firstNameCtr,
            decoration: InputDecoration(
              labelText: 'first_name',
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
