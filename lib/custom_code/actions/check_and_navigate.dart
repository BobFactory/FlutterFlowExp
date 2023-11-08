// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<void> checkAndNavigate(BuildContext context) async {
  await Future.delayed(const Duration(milliseconds: 200));
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString("token") ?? "";

  if (token.isNotEmpty) {
    context.go("/loginPageNew");
  } else {
    //Do Something here.
  }
}
