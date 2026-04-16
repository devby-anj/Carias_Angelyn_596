import 'package:flutter/material.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/testings/dashboard_screen.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://pnjxydzavtvlnhrerdku.supabase.co", 
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBuanh5ZHphdnR2bG5ocmVyZGt1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODQ2NTQsImV4cCI6MjA4NjQ2MDY1NH0.IkULjAQlDZ7yntiQ81nd9oGL2GP4v3LouYq5sgQNBm0"
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}
