import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_weather/search/search.dart';
import 'package:super_weather/theme/theme.dart';
import 'package:super_weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherBloc(
        weatherRepository: context.read<WeatherRepository>(),
      ),
      child: const WeatherView(),
    );
  }
}

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Weather'),
        actions: const [
          WeatherUnitsToggleButton(),
          SizedBox(width: 8),
        ],
      ),
      body: Center(
        child: BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state.status.isSuccess) {
              context.read<ThemeCubit>().updateTheme(state.weather);
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case WeatherStatus.initial:
                return const WeatherEmpty();
              case WeatherStatus.loading:
                return const WeatherLoading();
              case WeatherStatus.success:
                if (state.weather == null) return const WeatherEmpty();

                return WeatherPopulated(
                  weather: state.weather!,
                  units: state.temperatureUnits,
                  onRefresh: () async => context
                      .read<WeatherBloc>()
                      .add(WeatherEvent.refreshRequested()),
                );
              case WeatherStatus.failure:
                return const WeatherError();
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search, semanticLabel: 'Search'),
        onPressed: () async {
          final location = await Navigator.of(
            context,
          ).push(LocationSearchPage.route());

          if (!mounted || location == null) return;

          context
              .read<WeatherBloc>()
              .add(WeatherEvent.locationChanged(location));
        },
      ),
    );
  }
}
