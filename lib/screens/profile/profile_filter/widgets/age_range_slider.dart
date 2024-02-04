import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/profile/profile_filter/profile_filter_bloc/profile_filter_bloc.dart';
import 'package:senpai/utils/constants.dart';

class AgeRangeSlider extends StatelessWidget {
  const AgeRangeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFilterBloc, ProfileFilterState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<ProfileFilterBloc>(context);
        final minAge = bloc.changedFilters.minAge;
        final maxAge = bloc.changedFilters.maxAge;
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(R.strings.ageRangeTitle),
                  Text('$minAge-$maxAge'),
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                rangeThumbShape: RoundRangeSliderThumbShape(
                  enabledThumbRadius: $constants.corners.md,
                ),
                overlayShape: RoundSliderOverlayShape(
                  overlayRadius: $constants.insets.sm,
                ),
                trackHeight: 2,
                rangeTrackShape: const RectangularRangeSliderTrackShape(),
              ),
              child: RangeSlider(
                min: bloc.minAgeRange,
                max: bloc.maxAgeRange,
                activeColor: $constants.palette.white,
                inactiveColor: $constants.palette.buttonBorder,
                onChanged: (RangeValues values) {
                  bloc.add(OnChangeAge(values: values));
                },
                values: RangeValues(minAge.toDouble(), maxAge.toDouble()),
              ),
            ),
          ],
        );
      },
    );
  }
}
