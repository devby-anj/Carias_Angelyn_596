import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'view/student_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://pnjxydzavtvlnhrerdku.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBuanh5ZHphdnR2bG5ocmVyZGt1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODQ2NTQsImV4cCI6MjA4NjQ2MDY1NH0.IkULjAQlDZ7yntiQ81nd9oGL2GP4v3LouYq5sgQNBm0',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Grade Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const StudentPage(),
    );
  }
}