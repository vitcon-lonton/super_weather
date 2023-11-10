import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:super_weather/weather/weather.dart';

class WeatherUnitsToggleButton extends StatelessWidget {
  const WeatherUnitsToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isCelsius = context.select((WeatherBloc bloc) {
      return bloc.state.temperatureUnits.isCelsius;
    });

    return IconButton(
      tooltip: 'Use metric measurements for temperature units.',
      onPressed: () {
        context.read<WeatherBloc>().add(WeatherEvent.unitsToggled());
      },
      icon: Text(
        '°${isCelsius ? 'F' : 'C'}',
        style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
