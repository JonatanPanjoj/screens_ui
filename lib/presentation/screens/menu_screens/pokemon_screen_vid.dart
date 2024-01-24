import 'package:flutter/material.dart';
import 'package:screens_ui/config/theme/app_font_styles.dart';
import 'package:screens_ui/presentation/widgets/widgets.dart';

class PokemonScreenVid extends StatelessWidget {
  const PokemonScreenVid({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.7,
            titleSpacing: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(0),
              title: SizedBox.expand(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [
                        0.7,
                        0.98
                      ],
                          colors: [
                        Colors.transparent,
                        colors.scaffoldBackgroundColor
                      ])),
                ),
              ),
              background: SizedBox.expand(
                child: Image.asset(
                  'assets/img/charizard.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Charizard',
                        style: bold28,
                      )
                    ],
                  ),
                  const Text('N.º 0006', style: bold20),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      PokemonTypeButton(
                        color: Colors.orange,
                        lable: 'Fuego',
                        icon: Icons.fireplace_rounded,
                      ),
                      SizedBox(width: 10),
                      PokemonTypeButton(
                        color: Colors.blueGrey,
                        lable: 'Volador',
                        icon: Icons.air_rounded,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Se dice que el fuego de Charizard arde con más fuerza cuantas más duras batallas haya vivido. Cuando exhala fuego abrasador, la llama de la punta de la cola se aviva y adquiere un intenso color rojo.',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 20),
                  const Text('Stats', style: bold20),
                  const SizedBox(height: 5),
                  const PokemonStats(lable: 'PS', stat: 78),
                  const PokemonStats(lable: 'Ataque', stat: 84),
                  const PokemonStats(lable: 'Defensa', stat: 78),
                  const PokemonStats(lable: 'At. esp.', stat: 109),
                  const PokemonStats(lable: 'Def. esp.', stat: 85),
                  const PokemonStats(lable: 'Velocidad', stat: 100),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.balance),
                              SizedBox(width: 5),
                              Text(
                                '90.50 Kg',
                                style: bold16,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.unfold_more),
                              SizedBox(width: 5),
                              Text(
                                '1.70 m',
                                style: bold16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Debilidades', style: bold20),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PokemonTypeButton(
                        color: Colors.blue,
                        lable: 'Agua',
                        icon: Icons.water_drop_outlined,
                      ),
                              SizedBox(width: 15),
                      PokemonTypeButton(
                        color: Colors.brown,
                        lable: 'Roca',
                        icon: Icons.rocket,
                      ),
                              SizedBox(width: 15),
                      PokemonTypeButton(
                        color: Colors.yellow,
                        lable: 'Electricidad',
                        icon: Icons.electric_bolt,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
