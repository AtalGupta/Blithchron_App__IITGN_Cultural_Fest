// import 'package:wonders/common_libs.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navigation_bar/photo_gallery/save_load_mixin.dart';
import 'package:bottom_navigation_bar/photo_gallery/collectible_data.dart';
import 'package:bottom_navigation_bar/photo_gallery/wonder_type.dart';

class CollectiblesLogic with ThrottledSaveLoadMixin {
  @override
  String get fileName => 'collectibles.dat';

  /// Holds all collectibles that the views should care about
  final List<CollectibleData> all = collectiblesData;

  /// Current state for each collectible
  final statesById = ValueNotifier<Map<String, int>>({});

  CollectibleData? fromId(String? id) => id == null ? null : all.firstWhereOrNull((o) => o.id == id);

  List<CollectibleData> forWonder(WonderType wonder) {
    return all.where((o) => o.wonder == wonder).toList(growable: false);
  }

  void updateState(String id, int state) {
    Map<String, int> states = Map.of(statesById.value);
    states[id] = state;
    statesById.value = states;
    scheduleSave();
  }

  bool isLost(WonderType wonderType, int i) {
    final datas = forWonder(wonderType);
    final states = statesById.value;
    if (datas.length > i && states.containsKey(datas[i].id)) {
      return states[datas[i].id] == CollectibleState.lost;
    }
    return true;
  }

  void reset() {
    Map<String, int> states = {};
    for (int i = 0; i < all.length; i++) {
      states[all[i].id] = CollectibleState.lost;
    }
    statesById.value = states;
    debugPrint('collection reset');
    scheduleSave();
  }

  @override
  void copyFromJson(Map<String, dynamic> value) {
    Map<String, int> states = {};
    for (int i = 0; i < all.length; i++) {
      String id = all[i].id;
      states[id] = value[id] ?? CollectibleState.lost;
    }
    statesById.value = states;
  }

  @override
  Map<String, dynamic> toJson() => statesById.value;
}
