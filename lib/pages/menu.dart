import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';

import '../game/silver.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameMenu(),
    );
  }
}

class GameMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover, // Covers the whole screen
              ),
            ),
          ),
          // Game name
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'Silver', // Replace with the actual name of the game
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // buttons
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Start the Flame game
                      final game = Silver();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GameWidget(game: game)),
                      );
                    },
                    child: const Text('Play'),
                  ),
                  const SizedBox(height: 10), // Spacing between buttons
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: const Text('Tutorial'),
                  ),
                  const SizedBox(height: 10), // Spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to other games screen
                    },
                    child: const Text('Other Games'),
                  ),
                  const SizedBox(height: 10), // Spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to other games screen
                    },
                    child: const Text('Exit'),
                  ),
                ],
              ),
            ),
          ),



          // Settings and Sound icons
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0, right: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    color: Colors.white,
                    onPressed: () {
                      // Open settings
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.volume_up),
                    color: Colors.white,
                    onPressed: () {
                      // Toggle sound
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
