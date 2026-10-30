import 'package:class_project_001/Widgets/input_field.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  double result = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.indigo,

            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: controller1,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter a number",
                        labelText: "Numero uno",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "Input de beda";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20), //two create space between to boxes

                    InputField(
                      //with custom widget
                      controller: controller2,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      hintText: "Enter a number",
                      labelText: "Numero Dos",
                      validator: (value) {
                        if (value == null) {
                          return "Input de beda";
                        }
                        return null;
                      },
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          String num1 = controller1.text;
                          String num2 = controller2.text;

                          result = double.parse(num1) + double.parse(num2);

                          setState(() {});
                        }
                      },

                      child: Text("Calculate"),
                    ),

                    SizedBox(height: 20),

                    Text("Answer: $result"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
