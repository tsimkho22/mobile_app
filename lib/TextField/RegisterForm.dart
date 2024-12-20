import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  Widget textField(String text) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ຟອມລົງທະບຽນ',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            textField('ຊື່ຜູ້ໃຊ້'),
            SizedBox(
              height: 15,
            ),
            textField('ອີເມລ'),
            SizedBox(
              height: 15,
            ),
            textField('ລະຫັດຜ່ານ'),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'ລົງທະບຽນ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
