import 'dart:convert';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class SenpaiHydratedStorage implements Storage {
  @override
  dynamic read(String key) {
    return HydratedBloc.storage.read(key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    return HydratedBloc.storage.write(key, jsonEncode(value.toJson()));
  }

  @override
  Future<void> delete(String key) async {
    return HydratedBloc.storage.delete(key);
  }

  @override
  Future<void> clear() async {
    return HydratedBloc.storage.clear();
  }

  @override
  Future<void> close() {
    return HydratedBloc.storage.close();
  }
}
