import 'package:coffee_shop_app_ui_tutorial/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Image.asset('assets/images/welcome.jpg', fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Welcome back to our new Coffee Shop',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  'We are here to serve you, we have a different types of coffee for you in low price.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,

                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15)
            ),
            child: const Text('Get Started'),
          )
        ],
      ),
    );
  }
}
