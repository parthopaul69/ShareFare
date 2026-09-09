import 'package:flutter/material.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    // 1. Wait for 3 seconds on the splash screen
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    // 2. Navigate to Home screen using standard MaterialPageRoute
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MyHomePage(title: 'ShareFare'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          children: [
            const Spacer(),

            // App Logo
            Image.asset(
              'assets/AppLogo.jpeg',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 20),

            // Tagline
            const Text(
              'Enhancing Connection,\nEnsuring Security',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 212, 212, 212),
              ),
            ),

            const Spacer(),

            // Loading Spinner
            const SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 207, 207, 207),
                strokeWidth: 4.0,
              ),
            ),

            const SizedBox(height: 16),

            // Loading text
            const Text(
              'Loading...',
              style: TextStyle(
                color: Color.fromARGB(255, 209, 210, 209),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}