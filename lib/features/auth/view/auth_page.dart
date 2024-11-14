import 'package:flutter/material.dart';
import 'package:anime_convention/features/auth/widgets/auth_body.dart';

/// {@template auth_page}
/// A description for AuthPage
/// {@endtemplate}
class AuthPage extends StatelessWidget {
  /// {@macro auth_page}
  const AuthPage({super.key});

  /// The static route for AuthPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AuthPage());
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthView(),
    );
  }  
}

/// {@template auth_view}
/// Displays the Body of AuthView
/// {@endtemplate}
class AuthView extends StatelessWidget {
  /// {@macro auth_view}
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBody();
  }
}
