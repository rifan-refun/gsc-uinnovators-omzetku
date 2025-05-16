import 'package:flutter/material.dart';
import 'homePage.dart';

// Convert to StatefulWidget later for password visibility toggle
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background with curved shape
            Container(
              height: 200, // Adjust height as needed
              color: Colors.teal, // Placeholder color
              child: Stack(
                children: [
                  // Curved shape will be added here
                  // Logo
                  Align(
                    // Use Align to position the logo
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/sign_in_assets/logo putih 1 (1).png',
                      height: 50, // Adjust height as needed
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              // Wrap the main content below the background
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center, // Consider centering the column content if needed
                children: [
                  // Title
                  const Text(
                    'Sign In to Omzetku',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, // Adjust color as needed
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Username and Password Fields
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter your username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: true, // Set to false to show password
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ), // Added border for consistency
                      suffixIcon: Icon(
                        Icons.visibility,
                      ), // Placeholder for eye icon
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Sign In Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (c) => const HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.lightBlue, // Light blue background
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Forgot password? Button
                  Align(
                    // Align to the right
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // todo : Implement Forgot Password action
                      },
                      child: const Text('Forgot password?'),
                    ),
                  ),
                  const SizedBox(height: 7),
                  // Or divider
                  Row(
                    children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('or'),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Continue with Google Button
                  OutlinedButton(
                    onPressed: () {
                      // todo : Implement Google Sign In action
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // todo : Add Google logo icon here
                        // Image.asset('assets/google_logo.png', height: 20),
                        const SizedBox(width: 10),
                        Image.asset(
                          'assets/login_1_assets/google_logo.png',
                          height: 50, // Adjust height as needed
                        ),
                        const SizedBox(height: 25),
                        const Text('Continue with Google'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ), // Reduced spacing after the last button to move text up
                  // Don't have an account? Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          // todo : Implement Sign Up navigation
                        },
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
