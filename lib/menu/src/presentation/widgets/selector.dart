import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SelectorItem<T> {
  const SelectorItem({
    required this.value,
    required this.isSelected,
    required this.label,
  });

  final T value;
  final bool isSelected;
  final Widget label;
}

class Selector<T> extends StatelessWidget {
  const Selector({
    super.key,
    required this.items,
    required this.onSelected,
  });

  final List<SelectorItem<T>> items;
  final void Function(T) onSelected;

  @override
  Widget build(BuildContext context) {
    final children = items
        .expand<Widget>((item) sync* {
          yield const SizedBox(width: 4);
          yield Expanded(
            child: GestureDetector(
              onTap: () => _onItemPressed(item),
              child: Container(
                decoration: BoxDecoration(
                  color: item.isSelected
                      ? Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: item.label,
              ),
            ),
          );
        })
        .skip(1)
        .toList();

    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: children,
      ),
    );
  }

  void _onItemPressed(SelectorItem<T> item) {
    if (!item.isSelected) {
      onSelected(item.value);
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<SelectorItem<T>>('items', items));
    properties.add(DiagnosticsProperty<Function>('onSelected', onSelected));
  }
}
