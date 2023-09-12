import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _LoginState();
}

class _LoginState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 100),
          Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/img/vegetables.png"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              textAlign: TextAlign.start,
              "Enter your Phone number",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          TextField(
            maxLength: 10,
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp(r'[0-9]'),
              ),
            ],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: "+1",
              prefixIcon: Image(
                image: AssetImage("assets/img/img.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
