import 'package:flutter_test/flutter_test.dart';
import 'package:super_weather/app/app.dart';
import 'package:super_weather/weather/weather.dart';
import '../../helpers/helpers.dart';

void main() {
  initHydratedStorage();

  group('App', () {
    testWidgets('renders WeatherPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(WeatherPage), findsOneWidget);
    });
  });
}
