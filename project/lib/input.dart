import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InputPage extends StatefulWidget {
  final Function(Map<String, dynamic>) addItem;

  InputPage({required this.addItem});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _ownerNameController = TextEditingController();
  final TextEditingController _ownerPhoneController = TextEditingController();
  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _hostelcontroller = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate() && _image != null) {
      widget.addItem({
        'ownerName': _ownerNameController.text,
        'ownerPhone': _ownerPhoneController.text,
        'itemName': _itemNameController.text,
        'HostelBlock': _hostelcontroller.text,
        'price': _priceController.text,
        'image': _image!,
      });
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 15, 8),
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Add Item',
            style: TextStyle(color: Colors.white),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _ownerNameController,
                  decoration: InputDecoration(
                    labelText: 'Owner\'s Name',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(215, 255, 255, 255)),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter owner name' : null,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _hostelcontroller,
                  decoration: InputDecoration(
                    labelText: 'Hostel Block',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(215, 255, 255, 255)),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter your hostel' : null,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _ownerPhoneController,
                  decoration: InputDecoration(
                    labelText: 'Owner Phone Number',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(215, 255, 255, 255)),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter phone number' : null,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _itemNameController,
                  decoration: InputDecoration(
                    labelText: 'Item Name',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(215, 255, 255, 255)),
                  ),
                  validator: (value) =>
                      value!.isEmpty ? 'Enter item name' : null,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: _priceController,
                  decoration: InputDecoration(
                    labelText: 'Price',
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(215, 255, 255, 255)),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) => value!.isEmpty ? 'Enter price' : null,
                ),
                SizedBox(height: 10),
                _image == null
                    ? Text(
                        'No image selected',
                        style: TextStyle(color: Colors.white),
                      )
                    : Image.file(_image!, height: 100, width: 100),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  onPressed: _pickImage,
                  child: Text(
                    'Upload Image',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent),
                  onPressed: _submitForm,
                  child: Text(
                    'Add Item',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
