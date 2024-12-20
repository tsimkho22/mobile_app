import 'package:flutter/material.dart';

class bmi_calculator extends StatefulWidget {
  const bmi_calculator({super.key});

  @override
  State<bmi_calculator> createState() => _bmi_calculatorState();
}

class _bmi_calculatorState extends State<bmi_calculator> {
  Color myColor = Colors.transparent;
  TextEditingController w_controller = new TextEditingController();
  TextEditingController h_controller = new TextEditingController();
  var result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    Widget Detail(Color c, String detail) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: c,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
          ),
          Text(
            detail,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      );
    }

    Calculator(String weight, String height) async {
      var my_weight = double.parse(weight);
      //assert(my_weight is double);

      var my_height = double.parse(height);
      // assert(my_height is double);

      var my_result = (my_weight / (my_height * my_height));

      setState(() {
        result.text = my_result.toStringAsFixed(2);
        if (my_result < 18.5) {
          myColor = Colors.black;
        } else if (my_result >= 18.5 && my_result <= 24.9) {
          myColor = Colors.white;
        } else if (my_result >= 25 && my_result <= 29.9) {
          myColor = Colors.blue;
        } else if (my_result >= 10 && my_result <= 34.9) {
          myColor = Colors.grey;
        } else if (my_result >= 35) {
          myColor = Colors.cyan;
        }
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 67, 189, 246),
                  Color.fromARGB(0, 116, 255, 192),
                ],
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'BMI Calculator',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 10,
                      right: 15,
                    ),
                    child: TextField(
                      controller: w_controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'ປ້ອນນ້ຳໜັກຂອງທ່ານ',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 20,
                      right: 15,
                    ),
                    child: TextField(
                      controller: h_controller,
                      autofocus: false,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'ປ້ອນລວງສູງຂອງທ່ານ',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Calculator(w_controller.text, h_controller.text);
                          },
                          child: Text(
                            'ຄິດໄລ່',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(
                                0XFF0038FF,
                              ),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'BMI: ' + result.text,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Detail(Color(0xFF87B1D9), 'Underweight'),
                        Detail(Colors.green, 'Normal'),
                        Detail(Colors.yellow, 'Overweight'),
                        Detail(Colors.amber.shade700, 'Obese'),
                        Detail(Colors.red.shade600, 'Extreme'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
