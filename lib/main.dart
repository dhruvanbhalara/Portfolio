import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/portfolioApp.dart';
import 'package:provider/provider.dart';

import 'providers/utility_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<UtilityProvider>(
          create: (_) => UtilityProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Dhruvan Bhalara | Portfolio',
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: PortfolioApp(),
      ),
    ),
  );
}