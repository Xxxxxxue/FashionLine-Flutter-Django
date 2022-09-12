import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Usuario",
                  hintText: "Introduce el usuario",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  hintText: "Introduce la contraseña",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  hintText: "Repetir la contraseña",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Register"),
                  onPressed: () {
                    print("register");
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ya tienes cuenta，'),
                  TextButton(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.teal),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
