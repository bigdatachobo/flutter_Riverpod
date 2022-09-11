import 'package:flutter_playground/model/shopping_item_model.dart';
import 'package:flutter_playground/riverpod/state_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>(
  (ref) {
    final filterState = ref.watch(filterProvider);
    final shoppingListState = ref.watch(shoppingListProvider);

    if (filterState == FilterState.all) {
      return shoppingListState;
    }

    return shoppingListState
        .where((element) => filterState == FilterState.spicy
            ? element.isSpicy
            : !element.isSpicy)
        .toList();
  },
);

enum FilterState {
  notSpicy, // 안매움
  spicy, // 매움
  all, // 전부
}

final filterProvider = StateProvider<FilterState>(
  (ref) => FilterState.all,
);
