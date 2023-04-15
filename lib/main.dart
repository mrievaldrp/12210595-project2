import 'package:flutter/material.dart';
import 'package:projectnew/providers/dashboard_provider.dart';
import 'package:projectnew/views/login_view.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (bc) => DashboardProvider()),
        ChangeNotifierProvider(create: (bc) => BeritaPanelProvider()),
      ],
      builder: (context, Widget) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.amberAccent
            )
          ),
          home: LoginView());
      }));
}






