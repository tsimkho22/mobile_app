import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ເຂົ້າສູ້ລະບົບ',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/nuol.png",
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _userController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ຊື່ຜູ້ໃຊ້',
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'ກະລຸນາປ້ອນຊື້ຜູ້ໃຊ້';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ' ລະຫັດຜ່ານ',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                      ),
                      validator: (value) {
                        return (value == null || value.isEmpty)
                            ? 'ກະລຸນາປ້ອນລະຫັດຜ່ານ'
                            : null;
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String username = _userController.text;
                          String password = _passwordController.text;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Username: $username,Password: $password'),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'ເຂົ້າສູ້ລະບົບ',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        //Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Registration(),
                          ),
                        );
                      },
                      child: Text(
                        'ລົງທະບຽນ',
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ລົງທະບຽນ',
        ),
      ),
      body: const Center(
        child: Text(' ລົງທະບຽນ'),
      ),
    );
  }
}
