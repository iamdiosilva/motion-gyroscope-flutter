class Pokemon {
  final String name;
  final String pokemonId;
  final String imagePath;
  final String animatedImagePath;
  final List<String> types;

  Pokemon({
    required this.animatedImagePath,
    required this.name,
    required this.pokemonId,
    required this.imagePath,
    required this.types,
  });
}
