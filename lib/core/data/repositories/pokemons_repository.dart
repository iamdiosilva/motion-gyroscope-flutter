import 'package:hero_animation/core/data/pokemons_images/app_pokemon_gif.dart';

import '../../../models/pokemon.dart';

class PokemonRepository {
  static List<Pokemon> pokeList = [
    Pokemon(
      name: 'Bulbasaur',
      pokemonId: '001',
      animatedImagePath: AppPokemonsGif.getPokemonGif('001'),
      imagePath: AppPokemonsGif.getPokemonPng('001'),
      types: ['Grass', 'Poison'],
    ),
    Pokemon(
      name: 'Ivysaur',
      pokemonId: '002',
      animatedImagePath: AppPokemonsGif.getPokemonGif('002'),
      imagePath: AppPokemonsGif.getPokemonPng('002'),
      types: ['Grass', 'Poison'],
    ),
    Pokemon(
      name: 'Venusaur',
      pokemonId: '003',
      animatedImagePath: AppPokemonsGif.getPokemonGif('003'),
      imagePath: AppPokemonsGif.getPokemonPng('003'),
      types: ['Grass', 'Poison'],
    ),
  ];
}
