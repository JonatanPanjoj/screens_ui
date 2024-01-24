import 'package:flutter/material.dart';
import 'package:screens_ui/config/theme/theme.dart';
import 'package:screens_ui/presentation/widgets/widgets.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final scaffoldBackgroundColor = colors.scaffoldBackgroundColor;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: size.height * 0.7,
            titleSpacing: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.all(0),
              title: _CustomGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.7, 0.98],
                colors: [
                  Colors.transparent,
                  scaffoldBackgroundColor,
                ],
              ),
              background: Stack(
                children: [
                  SizedBox.expand(
                    child: Image.asset(
                      'assets/img/charizard.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
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
                      ),
                      
                    ],
                  ),
                  const Text('N.º 0006', style: bold20),
                  const SizedBox(height: 15),
                  const Row(
                        children: [
                          PokemonTypeButton(
                            lable: 'Fuego',
                            color: Colors.orange,
                            icon: Icons.fireplace,
                          ),
                          SizedBox(width: 10),
                          PokemonTypeButton(
                            lable: 'Volador',
                            color: Colors.blueGrey,
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
                  const PokemonStats(lable: 'velocidad', stat: 100),
                  const SizedBox(height: 20),
                  const Text('Info', style: bold20),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15)),
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
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.unfold_more_sharp),
                              SizedBox(width: 5),
                              Text(
                                '1.70 m',
                                style: bold16,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Debilidades', style: bold20),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const PokemonTypeButton(
                          color: Colors.blue,
                          lable: 'Agua',
                          icon: Icons.water_drop_rounded),
                      const SizedBox(width: 15),
                      PokemonTypeButton(
                          color: Colors.yellow.shade800,
                          lable: 'Electrico',
                          icon: Icons.electric_bolt_sharp),
                      const SizedBox(width: 15),
                      const PokemonTypeButton(
                          color: Colors.brown,
                          lable: 'Roca',
                          icon: Icons.light_mode_rounded),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _CustomGradient extends StatelessWidget {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final List<double> stops;
  final List<Color> colors;

  const _CustomGradient(
      {this.begin = Alignment.centerLeft,
      this.end = Alignment.centerRight,
      required this.stops,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: begin, end: end, stops: stops, colors: colors),
        ),
      ),
    );
  }
}
