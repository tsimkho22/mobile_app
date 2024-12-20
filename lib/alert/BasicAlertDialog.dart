import 'package:flutter/material.dart';

class BasicAlertDialog extends StatelessWidget {
  const BasicAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  'Comfirm',
                ),
                content: Text(
                  'This is my alert message.',
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'OK',
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Text(
          'Show Message Dialog',
        ),
      ),
    );
  }
}
