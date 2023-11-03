import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FACIL Y RAPIDO DE COCINAR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'PARA UNA PERSONA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard('Plato 1',
                      'https://images.rappi.com/restaurants_background/empanadas-1594846529071-1595957256634-1596118323393.jpg'),
                  _buildCard('Plato 2',
                      'https://images.venturapark.com/img/2021/07/tacos-de-carnitas-carne-asada-y-al-pastor.jpg'),
                  _buildCard('Plato 3',
                      'https://www.maricruzavalos.com/wp-content/uploads/2019/11/sopadeconchitas.jpg'),
                  // Agrega más imágenes y nombres de platos aquí
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'PARA LA FAMILIA',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard('Plato 4',
                      'https://assets.unileversolutions.com/recipes-v2/240599.jpg'),
                  _buildCard('Plato 5',
                      'https://d1uz88p17r663j.cloudfront.net/original/63d4cbc9faeca63292e512a33a86bf34_OMELETTE_DE_CHORIZO_CON_QUESO_150.jpg'),
                  _buildCard('Plato 6',
                      'https://assets.elgourmet.com/wp-content/uploads/2023/03/cover_k6wjsca5up_eg-lmrdz-episodicas-aguachiledecamaron-hi-8.jpg'),
                  // Agrega más imágenes y nombres de platos aquí
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'POPULARES',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCard('Plato 7',
                      'https://images.venturapark.com/img/2021/07/tacos-de-carnitas-carne-asada-y-al-pastor.jpg'),
                  _buildCard('Plato 8',
                      'https://www.vvsupremo.com/wp-content/uploads/2019/10/180906_RT_Chicken-Milanesa-Torta-09-26-18_104_v1-Approvals.jpg'),
                  _buildCard('Plato 9',
                      'https://s1.eestatic.com/2023/05/09/cocinillas/recetas/salsas/762433975_233007922_1706x960.jpg'),
                  // Agrega más imágenes y nombres de platos aquí
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
