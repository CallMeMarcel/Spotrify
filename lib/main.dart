import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proyek_pam/core/configs/theme/app_theme.dart';
import 'package:proyek_pam/presentation/choose_mode/bloc/theme.cubit.dart';
import 'package:proyek_pam/presentation/splash/pages/splash.dart';
 // Import SplashScreen
// Import LoginPage




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  runApp(const MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit())
      ],

      child: BlocBuilder<ThemeCubit,ThemeMode>(
        builder: (context,mode) =>MaterialApp(
          theme:AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode :mode,
          debugShowCheckedModeBanner: false,
          home: const SplashPage(), // Menampilkan SplashScreen pertama kali
        ),
      ),
    );
  } 
}
