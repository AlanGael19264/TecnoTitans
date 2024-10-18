import 'package:flutter/material.dart';

class HebPage extends StatefulWidget {
  const HebPage({super.key});

  @override
  _HebPageState createState() => _HebPageState();
}

class _HebPageState extends State<HebPage> {
  bool isChecked = false; // Estado del Checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color de fondo blanco
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20), // Espaciado inicial

            // Header "FindSpot"
            Container(
              width: 390,
              height: 56,
              color: const Color(0xff095169),
              child: const Center(
                child: Text(
                  "FindSpot",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20), // Espaciado entre header y la imagen

            // Imagen de la tienda HEB
            Image.asset(
              "assets/heb.jpg", // Aquí va tu imagen de HEB
              width: 356,
              height: 205,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20), // Espacio entre la imagen y el texto

            // Texto de la tienda HEB
            const Text(
              "HEB Monterrey",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 10),

            // Línea divisora
            const Divider(thickness: 1, indent: 20, endIndent: 20),

            const SizedBox(height: 10), // Espacio entre la línea y la información de contacto

            // Texto de información de contacto
            const Text(
              "Información de contacto",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 10),

            // Imagen adicional (FindSpot u otro)
            Image.asset(
              "assets/map_heb.jpg", // Cambiar por la imagen correspondiente al mapa de HEB
              width: 310,
              height: 214,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 10),

            // Alinear el Checkbox "Check-in" y "Guardar"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                      activeColor: const Color(0xff095169), // Color del checkbox azul
                    ),
                    const Text(
                      "Check-in",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff095169), // Texto azul
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  width: 153,
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color(0xff095169), // Color azul para el botón
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      "Guardar",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.white, // Texto blanco
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20), // Espaciado entre secciones

            // Alinear ícono de teléfono con el número
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Phone.png",
                  width: 32,
                  height: 29,
                ),
                const SizedBox(width: 10),
                const Text(
                  "+521 8153 9635", // Número de contacto de HEB (si aplica)
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Alinear ícono de globo con la URL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Globe.png",
                  width: 31,
                  height: 31,
                ),
                const SizedBox(width: 10),
                const Text(
                  "http://www.heb.com.mx/", // URL de HEB
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20), // Espaciado entre secciones

            // Icono de "Done" al final (opcional)
          ],
        ),
      ),
    );
  }
}
