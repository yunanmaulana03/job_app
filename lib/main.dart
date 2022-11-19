import 'package:flutter/material.dart';
import 'package:job_app/pages/home_page.dart';
import 'package:job_app/pages/onboarding_page.dart';
import 'package:job_app/pages/sign_in_page.dart';
import 'package:job_app/pages/sign_up_page.dart';
import 'package:job_app/pages/splash_page.dart';
import 'package:job_app/providers/auth_provider.dart';
import 'package:job_app/providers/category_provider.dart';
import 'package:job_app/providers/job_provider.dart';
import 'package:job_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider<CategoryProvider>(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider<JobProvider>(
          create: (context) => JobProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnboardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
