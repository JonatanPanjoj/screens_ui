import 'package:flutter/material.dart';
import 'package:screens_ui/config/theme/app_font_styles.dart';

class PokemonStats extends StatelessWidget {
  final String lable;
  final int stat;

  const PokemonStats({
    super.key,
    required this.lable,
    required this.stat,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(lable, style: bold14,),
          const Expanded(child: SizedBox()),
          Text('$stat'),
          const SizedBox(width: 25),
          SizedBox(
            width: size.width * 0.4,
            child: LinearProgressIndicator(
              minHeight: 10,
              value: stat / 255,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
