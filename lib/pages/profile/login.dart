import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
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
                  suffixIcon: IconButton(
                    icon: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  child: Text(
                    "No recuerda su contraseña.",
                    style: TextStyle(color: Colors.green),
                    textAlign: TextAlign.right,
                  ),
                ),
                onTap: () {
                  print("onclick resetear contraseña");
                },
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Registrar"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'register');
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
