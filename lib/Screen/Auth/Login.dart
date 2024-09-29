import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "PayRollApp",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
              width: 500,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email', contentPadding: EdgeInsets.all(8)),
                  keyboardType: TextInputType.emailAddress,
                ),
              )),
          SizedBox(
              width: 500,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Password', contentPadding: EdgeInsets.all(8)),
                  keyboardType: TextInputType.emailAddress,
                ),
              )),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 500,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[900],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: const Text('Login'),
            ),
          )
        ],
      ),
    ));
  }
}
