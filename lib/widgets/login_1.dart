import 'package:flutter/material.dart';
import 'package:myapp/widgets/sign_in.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo

              // Illustration
              Image.asset(
                'assets/login_1_assets/login page_1_asset.png',
                height: 200, // Adjust height as needed
              ),
              const SizedBox(height: 40),

              // Title Text
              const Text(
                'Run Your Business Smarter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Adjust color as needed
                ),
              ),
              const SizedBox(height: 10),

              // Description Text
              const Text(
                'From inventory to income,\ndata helps you make the right move every time.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey, // Adjust color as needed
                ),
              ),
              const SizedBox(height: 30),

              // Sign In and Sign Up Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // todo : Implement Sign Up action
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

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
                  // todo:Implement Google Sign In action
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // todo:Add Google logo icon here
                    // Image.asset('assets/google_logo.png', height: 20),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/login_1_assets/google_logo.png',
                      height: 50, // Adjust height as needed
                    ),
                    const SizedBox(height: 40),
                    const Text('Continue with Google'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
