import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/manager_dashboard.dart';
import 'screens/manager_selection_page.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/approved_forms_page.dart';
import 'screens/forms_to_review_page.dart';
import 'screens/file_uploader_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scan & Log App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1c3a63),
          foregroundColor: Colors.white,
        ),
      ),
      home: const LoginPage(), // ✅ Use LoginPage directly here
      routes: {
        '/register': (context) => const RegisterPage(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/manager-selection': (context) => const ManagerSelectionPage(),
        '/manager-dashboard': (context) => const ManagerDashboard(),
        '/edit-profile': (context) => const EditProfileScreen(),
        '/approved-forms': (context) => const ApprovedFormsPage(),
        '/forms-to-review': (context) => const FormsToReviewPage(),
        '/file-uploader-page': (context) => const FileUploaderPage(),
      },
    );
  }
}
