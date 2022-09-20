import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion/motion.dart';

import '../../models/pokemon.dart';

class CustomListTile extends StatefulWidget {
  final Pokemon pokemon;
  const CustomListTile({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  final _motionController = MotionController(maxAngle: pi / 20);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
          ),
          Motion.elevated(
            elevation: 5,
            controller: _motionController,
            child: Positioned(
              child: Container(
                height: 128,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white70,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Image.asset(
                        'assets/images/pokeball_icon.png',
                        height: 128,
                        width: 128,
                        color: Colors.white70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Motion.elevated(
                                controller: _motionController,
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white70,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Text(
                                      '#${widget.pokemon.pokemonId}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Motion.elevated(
                                controller: _motionController,
                                elevation: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white70,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Text(
                                      widget.pokemon.name,
                                      style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Motion.elevated(
                                controller: _motionController,
                                elevation: 5,
                                child: Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white70,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: buildTypes(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: -15,
            child: Hero(
              tag: widget.pokemon.name,
              child: Image.asset(
                widget.pokemon.imagePath,
                width: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildTypes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.pokemon.types
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Image.asset(
                'assets/images/$e.png'.toLowerCase(),
                height: 32,
                width: 32,
              ),
            ),
          )
          .toList(),
    );
  }
}
