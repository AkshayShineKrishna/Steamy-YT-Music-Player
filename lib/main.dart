import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:steamy/application/bloc/home_bloc.dart';
import 'core/di/injectable.dart';
import 'presentation/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: ((ctx) => getIt<HomeBloc>()))],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
