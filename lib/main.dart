import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services library for HapticFeedback
import 'splash_screen.dart'; // Make sure splash_screen.dart exists and is correctly named

void main() {
  // You can initialize any services or configurations here if needed
  runApp(
      const OmniSenseApp()); // Updated the app class name to OmniSenseApp for consistency
}

class OmniSenseApp extends StatelessWidget {
  const OmniSenseApp(
      {super.key}); // Ensure the super key is passed for the stateless widget

  @override
  Widget build(BuildContext context) {
    // Trigger Haptic Feedback when the app starts
    WidgetsBinding.instance.addPostFrameCallback((_) {
      HapticFeedback
          .heavyImpact(); // Provide haptic feedback after the app opens
    });

    return MaterialApp(
      title: 'OmniSense',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define your primary color here
        visualDensity: VisualDensity
            .adaptivePlatformDensity, // Adaptive for various platforms
      ),
      home:
          const SplashScreen(), // Ensure SplashScreen is properly created as a StatelessWidget
    );
  }
}
