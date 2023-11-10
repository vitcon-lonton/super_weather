import 'package:flutter/material.dart';

class WeatherUnitsToggleButton extends StatelessWidget {
  const WeatherUnitsToggleButton({
    required this.isCelsius,
    this.onPressed,
    super.key,
  });

  final bool isCelsius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      tooltip: 'Use metric measurements for temperature units.',
      onPressed: onPressed,
      icon: Text(
        '°${isCelsius ? 'F' : 'C'}',
        style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
