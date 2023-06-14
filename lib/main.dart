import 'package:flutter/material.dart';
import 'package:generated_routes/Routes/routes.dart';
import 'package:generated_routes/Routes/routes_name.dart';
import 'package:generated_routes/view/pageone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Pageone(),
      onGenerateRoute: Routes.onGeneratedRoute,
      initialRoute: RoutesNames.pageone,
    );
  }
}
