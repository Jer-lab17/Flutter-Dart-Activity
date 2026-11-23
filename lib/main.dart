
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 18),
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    const SizedBox(height: 110),
                    const Icon(
                      Icons.photo_camera_outlined,
                      size: 75,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: ShaderMask(
                          shaderCallback: (bounds) =>
                              const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.pink,
                              Colors.red,
                              Colors.orange,
                            ],
                          ).createShader(bounds),
                          child: const Text(
                            'Instavibe',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 45),
                    _input('Mobile number, username, or email'),
                    const SizedBox(height: 7),
                    _input('Password', obscure: true),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (_) {},
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const Text(
                          'Forgot Password?',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 38,
                      decoration: BoxDecoration(
                        color: const Color(0xFF79C7FA),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Divider(),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 15,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Log in with Facebook',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Container(
                      width: double.infinity,
                      height: 38,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.all_inclusive,
                          color: Colors.blue,
                          size: 18,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Meta',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _input(String hint, {bool obscure = false}) {
    return Container(
      height: 38,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}