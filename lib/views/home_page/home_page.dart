import 'package:flutter/material.dart';

import '../../common/common_widgets/custom_list_tile.dart';
import '../../core/data/repositories/pokemons_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.redAccent,
              Colors.purple,
              Colors.blueAccent,
            ],
          ),
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: CustomListTile(
                pokemon: PokemonRepository.pokeList[index],
              ),
            );
          },
          itemCount: PokemonRepository.pokeList.length,
        ),
      ),
    );
  }
}
