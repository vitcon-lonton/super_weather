import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding_repository/geocoding_repository.dart';
import 'package:super_weather/l10n/l10n.dart';
import 'package:super_weather/location_search/location_search.dart';

final GeocodingRepository geocodingRepository = GeocodingRepository();

class LocationSearch extends StatelessWidget {
  const LocationSearch({super.key});

  static Route<Location?> route() {
    return MaterialPageRoute(builder: (_) => const LocationSearch());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LocationSearchBloc(
        geocodingRepository: geocodingRepository,
      ),
      child: const LocationSearchView(),
    );
  }
}

class LocationSearchView extends StatelessWidget {
  const LocationSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: _SearchBar()),
      body: _SearchBody(),
    );
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
        .add(const LocationSearchEvent.textChanged(text: ''));
  }

  @override
  Widget build(BuildContext context) {
    // return SearchBar(
    //   controller: _textController,
    //   // autocorrect: false,
    //   onChanged: (value) => context
    //       .read<LocationSearchBloc>()
    //       .add(LocationSearchEvent.textChanged(text: value)),
    //   elevation: const MaterialStatePropertyAll(0),
    //   // leading: BackButton(onPressed: () => Navigator.pop(context)),
    //   // leading: const IconButton(onPressed: null, icon: Icon(Icons.search)),
    //   // leading: const Icon(Icons.search),
    //   hintText: 'Enter a search term',
    //   trailing: [
    //     IconButton(onPressed: _onClearTapped, icon: const Icon(Icons.clear))
    //   ],
    // );

    return TextField(
      controller: _textController,
      autocorrect: false,
      onChanged: (value) => context
          .read<LocationSearchBloc>()
          .add(LocationSearchEvent.textChanged(text: value)),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: _onClearTapped,
          icon: const Icon(Icons.clear),
        ),
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
  const _SearchResults({required this.items});

  final List<Location> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Text('No Results');
    }

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, int index) =>
          _SearchResultItem(item: items[index]),
    );
  }
}

class _SearchResultItem extends StatelessWidget {
  const _SearchResultItem({required this.item});

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
            success: (items) => Expanded(child: _SearchResults(items: items)),
          ),
        );
      },
    );
  }
}
