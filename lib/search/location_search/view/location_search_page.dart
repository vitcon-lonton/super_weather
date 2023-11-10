import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:super_weather/search/search.dart';

class LocationSearchPage extends StatelessWidget {
  const LocationSearchPage({super.key});

  static Route<Location?> route() {
    return MaterialPageRoute(builder: (_) => const LocationSearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocationSearchBloc(
        geocodingRepository: context.read<GeocodingRepository>(),
      ),
      child: const LocationSearchView(),
    );
  }
}

class LocationSearchView extends StatelessWidget {
  const LocationSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: _SearchBar()), body: _SearchBody());
  }
}

class _SearchBar extends StatefulWidget {
  @override
  State<_SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  final _textController = TextEditingController();

  void _onClearTapped() {
    _textController.text = '';
    context
        .read<LocationSearchBloc>()
        .add(const LocationSearchEvent.textChanged(''));
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      autocorrect: false,
      onChanged: (value) => context
          .read<LocationSearchBloc>()
          .add(LocationSearchEvent.textChanged(value)),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: _onClearTapped, icon: const Icon(Icons.clear)),
        border: InputBorder.none,
        hintText: 'Enter a search term',
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults(this.items);

  final List<Location> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Text('No Results');
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (_, int i) => _SearchResultItem(items[i]),
    );
  }
}

class _SearchResultItem extends StatelessWidget {
  const _SearchResultItem(this.item);

  final Location item;

  @override
  Widget build(BuildContext context) {
    final nameStr = item.name;
    final country = item.country;
    final countryStr = country?.isNotEmpty ?? false ? ', $country' : '';
    final title = '$nameStr$countryStr';

    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(Icons.location_on_rounded),
      ),
      title: Text(title),
      subtitle: Text('Lat: ${item.latitude} / Long: ${item.longitude}'),
      onTap: () => Navigator.of(context).pop(item),
    );
  }
}

class _SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationSearchBloc, LocationSearchState>(
      builder: (context, state) {
        return Center(
          child: state.when(
            empty: () => const Text('Please enter a term to begin'),
            loading: () => const CircularProgressIndicator(),
            failure: Text.new,
            success: _SearchResults.new,
          ),
        );
      },
    );
  }
}
