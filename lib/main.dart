import 'package:flame/game.dart';
import 'package:flame/flame.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'Silver.dart';
import 'pages/menu.dart';

void main() {

    WidgetsFlutterBinding.ensureInitialized();
    Flame.device.fullScreen();
    Flame.device.setLandscape();

    runApp(Menu());

  
}