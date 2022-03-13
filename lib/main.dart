import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarahah/ui/start/start.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    const MaterialApp(
      home: Start(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
