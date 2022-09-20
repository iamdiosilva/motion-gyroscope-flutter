const String pokemonGif = 'assets/images/';
const String imgTypeGif = '_animated.gif';
const String imgTypePng = '.png';

class AppPokemonsGif {
  static getPokemonGif(String pokemonId) {
    return '$pokemonGif$pokemonId$imgTypeGif';
  }

  static getPokemonPng(String pokemonId) {
    return '$pokemonGif$pokemonId$imgTypePng';
  }
}
