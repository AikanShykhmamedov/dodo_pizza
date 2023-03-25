import 'package:dodo_pizza/localization/localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CitiesAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CitiesAppBar({
    super.key,
    required this.canPop,
    required this.countryName,
    required this.onSearch,
    required this.onCountryPressed,
  });

  final bool canPop;
  final String countryName;
  final void Function(String) onSearch;
  final VoidCallback onCountryPressed;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  State<CitiesAppBar> createState() => _CitiesAppBarState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('canPop', canPop));
    properties.add(StringProperty('countryName', countryName));
    properties.add(DiagnosticsProperty<Function>('onSearch', onSearch));
    properties.add(DiagnosticsProperty<Function>('onCountryPressed', onCountryPressed));
  }
}

class _CitiesAppBarState extends State<CitiesAppBar> {
  final _showSearch = ValueNotifier<bool>(false);
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      widget.onSearch(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _showSearch.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = InkWell(
      onTap: widget.onCountryPressed,
      splashColor: Theme.of(context).colorScheme.primaryContainer,
      customBorder: const StadiumBorder(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(widget.countryName),
            ),
            const SizedBox(width: 2),
            const Icon(Icons.keyboard_arrow_down_rounded),
          ],
        ),
      ),
    );

    final appBar = AppBar(
      foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
      automaticallyImplyLeading: false,
      leading: widget.canPop
          ? CloseButton(
              color: Theme.of(context).colorScheme.primary,
            )
          : null,
      title: title,
      titleSpacing: widget.canPop ? 0 : null,
      actions: [
        IconButton(
          onPressed: _onSearchPressed,
          icon: const Icon(Icons.search_rounded),
        ),
      ],
    );

    final searchBar = ValueListenableBuilder(
      valueListenable: _showSearch,
      builder: (context, showSearch, _) {
        if (showSearch) {
          return Material(
            color: Theme.of(context).appBarTheme.backgroundColor!,
            child: SafeArea(
              child: SizedBox.fromSize(
                size: widget.preferredSize,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        autofocus: true,
                        textInputAction: TextInputAction.search,
                        style: Theme.of(context).inputDecorationTheme.hintStyle!,
                        decoration: InputDecoration(
                          hintText: S.of(context).regionCitySearchHint,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: _onClearPressed,
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );

    return Stack(
      children: [
        appBar,
        searchBar,
      ],
    );
  }

  void _onSearchPressed() {
    _showSearch.value = true;
  }

  void _onClearPressed() {
    if (_searchController.text.isNotEmpty) {
      _searchController.clear();
    } else {
      _showSearch.value = false;
    }
  }
}
