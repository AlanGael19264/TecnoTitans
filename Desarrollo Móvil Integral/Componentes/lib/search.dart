import 'package:flutter/material.dart';
import 'ut.dart';
import 'obelisco.dart';
import 'heb.dart';
import 'walmart.dart';
import 'fundidora.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Lista de nombres para la búsqueda
  final List<String> _options = [
    "Universidad Tecnologica de Santa Catarina",
    "Fundidora",
    "Obelisco",
    "Walmart",
    "HEB",
  ];

  // Almacena el texto del campo de búsqueda
  String _searchText = "";

  // Controlador para el TextField
  final TextEditingController _controller = TextEditingController();

  // Filtra las opciones basadas en el texto de búsqueda
  List<String> _filteredOptions() {
    return _options
        .where((option) => option.toLowerCase().contains(_searchText.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Contenedor de fondo
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff095169),
            ),
          ),
          // Contenido principal
          Column(
            children: [
              const SizedBox(height: 50), // Espacio en la parte superior
              // Imagen de búsqueda
              Image.asset(
                "assets/logo.png",
                width: 156,
                height: 180,
              ),
              const SizedBox(height: 20), // Espacio entre la imagen de búsqueda y el campo de entrada
              // Campo de entrada con placeholder
              Container(
                width: 337,
                height: 42,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: _controller,
                    onChanged: (text) {
                      setState(() {
                        _searchText = text; // Actualiza el texto de búsqueda
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "¿A dónde te gustaría ir?", // Placeholder
                      border: InputBorder.none, // Sin borde
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0), // Espacio reducido entre el campo de entrada y las opciones
              // Mostrar lista solo si hay texto en el campo de búsqueda
              if (_searchText.isNotEmpty)
                Container(
                  width: 337, // Ancho del fondo de la lista
                  decoration: BoxDecoration(
                    color: Colors.white, // Fondo blanco para la lista
                    borderRadius: BorderRadius.circular(0), // Esquinas redondeadas
                  ),
                  child: ListView.builder(
                    shrinkWrap: true, // Para que la lista ocupe solo el espacio necesario
                    physics: const NeverScrollableScrollPhysics(), // Deshabilitar el desplazamiento
                    itemCount: _filteredOptions().length,
                    itemBuilder: (context, index) {
                      final option = _filteredOptions()[index];
                      return ListTile(
                        title: Text(option),
                        onTap: () {
                          // Navegar según la opción seleccionada
                          if (option == "Universidad Tecnologica de Santa Catarina") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const UtPage()), // Navega a la página Universidad
                            );
                          } else if (option == "Fundidora") {
                            // Navegar a la página de Fundidora (debes crearla)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const FundidoraPage()), // Navega a la página Fundidora
                            );
                          } else if (option == "Obelisco") {
                            // Navegar a la página de Obelisco (debes crearla)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ObeliscoPage()), // Navega a la página Obelisco
                            );
                          } else if (option == "Walmart") {
                            // Navegar a la página de Walmart (debes crearla)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const WalmartPage()), // Navega a la página Walmart
                            );
                          } else if (option == "HEB") {
                            // Navegar a la página de HEB (debes crearla)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HebPage()), // Navega a la página HEB
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              const SizedBox(height: 20), // Espacio entre la lista y FindSpot
              // Imagen de FindSpot

            ],
          ),
        ],
      ),
    );
  }
}
