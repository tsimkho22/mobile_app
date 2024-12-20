import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlert1 extends StatelessWidget {
  const CustomAlert1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Text(
                  'Comfirm',
                ),
                content: Text(
                  'This is message dialog',
                ),
                actions: [
                  CupertinoDialogAction(
                    child: Text(
                      'Cancel',
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  CupertinoDialogAction(
                    child: Text(
                      'OK',
                    ),
                    onPressed: () => Navigator.of(context).pop(),
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
