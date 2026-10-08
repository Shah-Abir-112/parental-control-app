import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

const appRole = 'Parent';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    String status;
      try {
          await Firebase.initializeApp();
              status = 'Firebase connected ✅';
                } catch (e) {
                    status = 'Firebase error ❌\n$e';
                      }
                        runApp(MaterialApp(
                            title: '$appRole App',
                                home: Scaffold(
                                      appBar: AppBar(title: const Text('$appRole App')),
                                            body: Center(
                                                    child: Padding(
                                                              padding: const EdgeInsets.all(24),
                                                                        child: Text(status, textAlign: TextAlign.center),
                                                                                ),
                                                                                      ),
                                                                                          ),
                                                                                            ));
                                                                                            }