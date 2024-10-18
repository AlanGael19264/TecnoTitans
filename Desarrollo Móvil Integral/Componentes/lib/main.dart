import 'package:flutter/material.dart';
import 'login.dart'; // Importa el archivo login.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Container
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xaa059b9a),
            ),
          ),
          // Main content of the form
          SingleChildScrollView(
            child: Column(
              children: [
                // City Image
                Image.asset(
                  "assets/FindSpot.png",
                  width: 423,
                  height: 390,
                ),
                // "Registro" Title
                const Text(
                  "Registro",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Puedes cambiar el color según el diseño
                  ),
                ),
                const SizedBox(height: 20), // Espacio entre el título y los inputs
                // Username Input Field
                Container(
                  width: 292,
                  height: 39,
                  margin: const EdgeInsets.symmetric(vertical: 10), // To space out the inputs
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Usuario",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // Password Input Field
                Container(
                  width: 292,
                  height: 39,
                  margin: const EdgeInsets.symmetric(vertical: 10), // To space out the inputs
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Contraseña",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                // "Registrarse" Button
                Container(
                  width: 153,
                  height: 38,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Registrarse",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                // Login Prompt
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Texto normal
                      const Text(
                        "Ya tienes cuenta con nosotros",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5), // Espacio entre el texto y el link
                      // Texto clicable "Iniciar Sesión"
                      GestureDetector(
                        onTap: () {
                          // Navegar a la página de inicio de sesión
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                          );
                        },
                        child: const Text(
                          "Iniciar Sesión",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue, // Color azul para indicar que es clicable
                            decoration: TextDecoration.underline, // Subrayado para indicar link
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

