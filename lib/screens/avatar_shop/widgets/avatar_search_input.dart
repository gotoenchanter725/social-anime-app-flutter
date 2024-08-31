import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/avatar_shop/bloc/avatar_shop_bloc.dart';
import 'package:senpai/utils/constants.dart';

class AvatarSearchInput extends StatelessWidget {
  const AvatarSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AvatarsShopBloc>(context);

    return Row(
      children: [
        Expanded(
          child: SenpaiIconInput(
            hintText: R.strings.searchText,
            borderRadius: $constants.insets.xl,
            controller: bloc.searchController,
            onChange: (text) {
              bloc.add(OnSearchAvatarsShopEvent(searchText: text));
            },
            iconPath: PathConstants.searchIcon,
            onTapSuffix: () {
              bloc.searchController.clear();
              bloc.add(OnSearchAvatarsShopEvent(searchText: ''));
            },
          ),
        ),
        // TODO: 20.08 commment filter for now
        // SizedBox(width: $constants.corners.sm),
        // _buildFilterButton(context),
      ],
    );
  }

  // Widget _buildFilterButton(BuildContext context) {
  //   return InkWell(
  //     onTap: () {},
  //     child: SvgPicture.asset(
  //       PathConstants.filterCircle,
  //       width: $constants.insets.xl,
  //       height: $constants.insets.xl,
  //       fit: BoxFit.contain,
  //     ),
  //   );
  // }
}
