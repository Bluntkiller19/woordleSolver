import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woordle_solver/navigation/route_builder.dart';
import 'package:woordle_solver/theme/theme_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<ThemeModel>(
        create: (_) => ThemeModel(),
      ),
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
      title: 'Mornè trivia quiz',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeModel>(context).currentTheme,
      onGenerateRoute: RouteBuilder.generateRoute,
    );
  }
}