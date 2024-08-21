import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/avatar_shop/blocs/fetch_avatars_shop_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/screens/avatar_shop/bloc/avatar_shop_bloc.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_search_input.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_shop_card_item.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_shop_header.dart';
import 'package:senpai/utils/constants.dart';

class AvatarsShopContent extends StatelessWidget {
  const AvatarsShopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvatarsShopBloc, AvatarsShopState>(
      listenWhen: (_, currState) =>
          currState is AvatarsShopFetchState || currState is UserIdInitialState,
      listener: (context, state) {
        final bloc = BlocProvider.of<AvatarsShopBloc>(context);

        if (state is UserIdInitialState && bloc.userID.isNotEmpty) {
          final fetchUserBloc = BlocProvider.of<FetchUserBloc>(context);
          fetchUserBloc.fetchUser(userId: int.parse(bloc.userID));
        } else {
          final serviceBloc = BlocProvider.of<FetchAvatarsShopBloc>(context);
          serviceBloc.fetchAvatarsShop(
            userId: int.parse(bloc.user.id),
            page: bloc.page,
            query: bloc.searchText,
            gender: bloc.user.gender,
          );
        }
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<AvatarsShopBloc>(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AvatarShopHeaderWidget(),
            SizedBox(height: $constants.corners.xl),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
              child: const AvatarSearchInput(),
            ),
            SizedBox(height: $constants.corners.sm),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
                child: GridView.builder(
                  controller: bloc.avatarsListController,
                  itemCount: bloc.avatarsList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 160 / 273,
                  ),
                  padding: EdgeInsets.only(
                    top: $constants.insets.md,
                    bottom: $constants.corners.xl,
                  ),
                  itemBuilder: (context, index) => AvatarShopCardItem(
                    avatarsShopModel: bloc.avatarsList[index],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
