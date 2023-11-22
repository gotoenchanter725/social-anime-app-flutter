import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:senpai/core/graphql/blocs/mutation/mutation_bloc.dart';
import 'package:senpai/core/graphql/models/graphql_api.dart';

@injectable
class SetUserLocationBloc extends MutationBloc<SetUserLocation$Mutation> {
  SetUserLocationBloc() : super(options: _setUserLocationMutationOptions());

  static WatchQueryOptions<Object?> _setUserLocationMutationOptions() {
    return WatchQueryOptions(
      document: SET_USER_LOCATION_MUTATION_DOCUMENT,
      fetchPolicy: FetchPolicy.noCache,
    );
  }

  setUserLocation({
    required int userId,
    required String longitude,
    required String latitude,
  }) {
    final variables = SetUserLocationArguments(
      input: SetUserLocationInput(
        userId: userId,
        longitude: longitude,
        latitude: latitude,
      ),
    ).toJson();

    run(variables);
  }

  @override
  SetUserLocation$Mutation parseData(Map<String, dynamic>? data) {
    return SetUserLocation$Mutation.fromJson(data ?? <String, dynamic>{});
  }
}
