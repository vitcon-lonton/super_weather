import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:open_meteo_api_client/open_meteo_api_client.dart';
import 'package:super_weather/l10n/l10n.dart';
import 'package:super_weather/theme/theme.dart';
import 'package:super_weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final OpenMeteoApiClient openMeteoClient;

  @override
  void initState() {
    super.initState();
    openMeteoClient = OpenMeteoApiClient();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => GeocodingRepository(openMeteoClient: openMeteoClient),
        ),
        RepositoryProvider(
          create: (_) => WeatherRepository(openMeteoClient: openMeteoClient),
        ),
      ],
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (_) => ThemeCubit())],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.select((ThemeCubit bloc) => bloc.state);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const WeatherPage(),
    );
  }
}
