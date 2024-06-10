import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transwift/homepage_body.dart';
import 'package:transwift/lc.dart';
import 'package:transwift/provider/auth_provider.dart';
import 'package:transwift/provider/user_provider.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'package:transwift/views/Profile/profile.dart';
import 'package:transwift/views/Trip/my_trip.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAmsQVPK-xAUkNKHGmrgSWGEXp3gYgJxnw',
      appId: '1:956660159455:android:0a85fb11f735f91cbe6a6a',
      messagingSenderId: '956660159455',
      projectId: 'transswift-95a01',
    ),
  );
  await initializeDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trans Swift',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomepageBody(),
        '/map': (context) => const MyTrip(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
