import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:verde_perto/controller/cep_store.dart';
import 'package:verde_perto/controller/image_store.dart';
import 'package:verde_perto/controller/register_store.dart';
import 'package:verde_perto/pages/register_page.dart';
import 'package:verde_perto/pages/splashscreen_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  GetIt getIt = GetIt.instance;
  getIt.registerLazySingleton<ImageStore>(() => ImageStore());
  getIt.registerLazySingleton<CepStore>(() => CepStore());
  getIt.registerLazySingleton<RegisterStore>(() => RegisterStore());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Poppins',
      ),
      home: const RegisterPage(),
    );
  }
}
