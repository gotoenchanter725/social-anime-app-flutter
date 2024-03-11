import 'package:flutter/material.dart';
import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:senpai/utils/constants.dart';

class EventLocationTextFieldWidget extends StatelessWidget {
  EventLocationTextFieldWidget({
    Key? key,
  }) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GooglePlaceAutoCompleteTextField(
      textEditingController: controller,
      googleAPIKey: $constants.apiKeys.placesApiKey,
      inputDecoration: const InputDecoration.collapsed(hintText: ''),
      debounceTime: $constants.times.fast.inMilliseconds,
      isLatLngRequired: true,
      getPlaceDetailWithLatLng: (Prediction prediction) {},
      itemClick: (Prediction prediction) {
        controller.text = prediction.description ?? '';
        controller.selection = TextSelection.fromPosition(
            TextPosition(offset: prediction.description?.length ?? 0));
      },
      itemBuilder: (context, index, Prediction prediction) {
        return Padding(
          padding: EdgeInsets.all($constants.insets.xs),
          child: Row(
            children: [
              const Icon(Icons.location_on),
              SizedBox(
                width: $constants.insets.xs,
              ),
              Expanded(child: Text(prediction.description ?? ''))
            ],
          ),
        );
      },
      seperatedBuilder: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: const Divider(),
      ),
      isCrossBtnShown: true,
      containerHorizontalPadding: $constants.insets.xs,
    );
  }
}
