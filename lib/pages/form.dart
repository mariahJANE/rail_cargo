import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  final descriptionController = TextEditingController();

  final instructionContoller = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  String? _selectedCargo;
  String? _selectedDestination;
  String? _selectedStation;

  List<String> cargoType = [];
  List<String> _destination = [];

  void save(){}
  void documentUpload(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              validator: (value) =>
                  value!.isEmpty ? 'Please enter client name' : null,
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              initialValue: _selectedCargo,
              decoration: InputDecoration(labelText: 'Cargo Type'),
              items: cargoType.map((String cargo) {
                return DropdownMenuItem<String>(
                  value: cargo,
                  child: Text(cargo),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedCargo = newValue;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a cargo Type';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              initialValue: _selectedDestination,
              decoration: InputDecoration(labelText: 'Source Station'),
              items: _destination.map((String destination) {
                return DropdownMenuItem<String>(
                  value: destination,
                  child: Text(destination),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedDestination = newValue;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a station';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              initialValue: _selectedStation,
              decoration: InputDecoration(labelText: 'Destination Staion'),
              items: _destination.map((String station) {
                return DropdownMenuItem<String>(
                  value: station,
                  child: Text(station),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedStation = newValue;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a destination station';
                }
                return null;
              },
            ),
            TextFormField(
              controller: instructionContoller,
              decoration: InputDecoration(labelText: 'Special instructions'),
            ),
            Row(
              children: [
                Text('Upload Documents'),
                SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: Icon(Icons.file_upload))
              ],
            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text('Save')),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){}, child: Text('Cancel'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
