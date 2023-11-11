import 'package:flutter/material.dart';

class LocationSearchInput extends StatefulWidget {
  const LocationSearchInput({super.key, this.onChanged});

  final void Function(String)? onChanged;

  @override
  State<LocationSearchInput> createState() => LocationSearchInputState();
}

class LocationSearchInputState extends State<LocationSearchInput> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      autocorrect: false,
      onChanged: (value) => widget.onChanged?.call(value),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            _textController.text = '';
            widget.onChanged?.call('');
          },
        ),
        hintText: 'Enter a search term',
        border: InputBorder.none,
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}
