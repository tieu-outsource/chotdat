import 'package:chotdat/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Theme.of(context).copyWith(
        textTheme: GoogleFonts.montserratTextTheme(),
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: Styles.primaryColor,
            ),
        scaffoldBackgroundColor: Styles.primaryColor,
      ),
      title: "Chotdat.vn",
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
