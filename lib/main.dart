import 'package:avo/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: kCPrimary2,
          secondary: const Color(0xFFF5F5F5),
          surface: const Color(0xFFF5F5F5),
          background: const Color(0xFFF5F5F5),
          error: const Color(0xFFB00020),
          onPrimary: const Color(0xFFF5F5F5),
          onSecondary: const Color(0xFFF5F5F5),
          onSurface: const Color(0xFFF5F5F5),
          onBackground: const Color(0xFFF5F5F5),
          onError: const Color(0xFFB00020),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
