import 'package:flutter/material.dart';
import 'package:page_g8/page/getStarted.dart';
import 'package:page_g8/page/login.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/img/Delivery.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Get the fastest \nDelivery groceries at home",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Ger your groceries in as fast as one hour",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF353535),
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GetStarted()),
                      );
                    },
                    child: Card(
                      color: Color(0xFFFF746B),
                      elevation: 2,
                      child: SizedBox(
                        width: 254,
                        height: 57,
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Card(
                    color: Color(0xFF53B175),
                    elevation: 2,
                    child: SizedBox(
                      width: 254,
                      height: 57,
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
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
