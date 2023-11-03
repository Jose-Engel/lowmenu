import 'package:flutter/material.dart';

class RecetaScreen extends StatelessWidget {
  const RecetaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Receta: Arroz con huevo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://img-global.cpcdn.com/recipes/772b7fb19ceca0c6/1200x630cq70/photo.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Arroz con huevo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star_half, color: Colors.yellow),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica para guardar la receta
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      onPrimary: Colors.white,
                    ),
                    child: const Text('Guardar receta'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Descripción:\nUna deliciosa y sencilla receta de arroz con huevo que te encantará. Perfecto para una comida rápida y nutritiva.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Ingredientes:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('100gr de Arroz'),
                      Text('1 o 2 Huevo'),
                      Text('1/2 Cebolla'),
                      Text('1/2 Tomate'),
                      Text('10ml de Aceite'),
                      Text('sal y pimienta al gusto')
                      // Agrega más ingredientes aquí
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      onPrimary: Colors.white,
                    ),
                    child: const Text('Volver a la Pantalla Principal'),
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
