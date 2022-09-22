import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerView0 extends StatefulWidget {
  const ImagePickerView0({Key? key}) : super(key: key);

  @override
  State<ImagePickerView0> createState() => _ImagePickerView0State();
}

class _ImagePickerView0State extends State<ImagePickerView0> {
  final String _appbarTitle = 'Image Picker';
  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appbarTitle), centerTitle: true),
      body: Center(
          child: ElevatedButton(
        onPressed: () => _imageSelectorGalary(),
        child: const Text('pick image'),
      )),
    );
  }

  _imageSelectorGalary() async {
    final XFile? image =
        await _imagePicker.pickImage(source: ImageSource.camera);
    print('You selected camera image: ${image!.path}');
    setState(() {});
  }
}
