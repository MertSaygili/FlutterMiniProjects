// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AlertLearnView extends StatefulWidget {
  const AlertLearnView({Key? key}) : super(key: key);

  @override
  State<AlertLearnView> createState() => _AlertLearnViewState();
}

class _AlertLearnViewState extends State<AlertLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? _response = await showDialog(
              // Dismissible ile kullanici arkaya tiklayarak dialogtan kurtulamaz
              // barrierDismissible: false,
              context: context,
              builder: (context) {
                // return const _UpdateDialog(); veya
                // return UpdateDialog(context: context); // daha performansli
                return const _ImageZoomDialog();
              });

          if (_response == true) {
            print('User clicked to updated text');
          }
        },
        child: const Icon(Icons.dialpad_outlined),
      ),
    );
  }
}

class _UpdateDialog extends StatefulWidget {
  const _UpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  State<_UpdateDialog> createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<_UpdateDialog> {
  bool _isUpdated = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Version updated'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isUpdated = true;
            });
            Navigator.of(context).pop<bool>(_isUpdated);
          },
          child: const Text('Update'),
        )
      ],
    );
  }
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: const Text('Version updated'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop<bool>(true);
              },
              child: const Text('Update'),
            )
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      elevation: 10,
      child: InteractiveViewer(
        child: Image.network(
          'https://picsum.photos/200',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
