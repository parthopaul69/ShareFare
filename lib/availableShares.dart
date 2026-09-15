import 'package:flutter/material.dart';

import 'home.dart';

class AvailableSharesPage extends StatefulWidget {
  const AvailableSharesPage({super.key});

  @override
  State<AvailableSharesPage> createState() => _AvailableSharesPageState();
}

class _AvailableSharesPageState extends State<AvailableSharesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Here are the available shares lekha
              const Text(
                'Here are the available shares :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 247, 247, 247),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // Available shares large sized box
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255,35,35,35,), 
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 40),

              // Offer a share lekha
              const Text(
                'Offer a share',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 253, 253),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Plus Button
              SizedBox(
                width: 60,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 72, 72, 72),
                    foregroundColor: const Color.fromARGB(255, 246, 246, 246),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    '+',
                    style: TextStyle(color: Color.fromARGB(255, 39, 201, 6), fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'ShareFare'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
