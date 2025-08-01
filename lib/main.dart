import 'package:flutter/material.dart';

// Core Screens
import 'screens/login_page.dart';
import 'screens/register_page.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/manager_dashboard.dart';
import 'screens/manager_selection_page.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/approved_forms_page.dart';
import 'screens/forms_to_review_page.dart';
import 'screens/file_uploader_page.dart';

// Form Screens
import 'screens/form_selector_page.dart';
import 'screens/form1_setup_page.dart';
import 'screens/form2_setup_page.dart';
import 'screens/form3_setup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Removed `const` because not all routes are const widgets
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
      home: LoginPage(),
      routes: {
        '/register': (context) => RegisterPage(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/manager-selection': (context) => ManagerSelectionPage(),
        '/manager-dashboard': (context) => ManagerDashboard(),
        '/edit-profile': (context) => EditProfileScreen(),
        '/approved-forms': (context) => ApprovedFormsPage(),
        '/forms-to-review': (context) => FormsToReviewPage(),
        '/file-uploader-page': (context) => FileUploaderPage(),
        '/form-selector': (context) => FormSelectorPage(),
        '/form1-setup': (context) => Form1SetupPage(),
        '/form2-setup': (context) => Form2SetupPage(),
        '/form3-setup': (context) => Form3SetupPage(),
      },
    );
  }
}
