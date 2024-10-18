import 'package:flutter/material.dart';
import 'search.dart'; // Importa el archivo search.dart

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
          // Main content of the login form
          SingleChildScrollView(
            child: Column(
              children: [
                // City Image
                Image.asset(
                  "assets/FindSpot.png",
                  width: 423,
                  height: 390,
                ),
                // "Iniciar Sesión" Title
                const Text(
                  "Iniciar Sesión",
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
                // FindSpot Image
                // "Iniciar Sesión" Button
                Container(
                  width: 153,
                  height: 38,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Navegar a la página de búsqueda
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SearchPage()),
                        );
                      },
                      child: const Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // Registration Prompt - "No tienes cuenta?"
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Texto normal
                      const Text(
                        "No tienes cuenta?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black, // Color del texto normal
                        ),
                      ),
                      const SizedBox(width: 5), // Espacio entre el texto y el link
                      // Texto clicable "Registrarse"
                      GestureDetector(
                        onTap: () {
                          // Navegar a la página de registro
                          Navigator.pop(context); // Regresar a la página de registro
                        },
                        child: const Text(
                          "Registrarse",
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
