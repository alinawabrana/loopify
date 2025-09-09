import 'package:flutter/cupertino.dart';

import '../../../constants/colors.dart';
import '../form_field/form_field_label.dart';

class AdSpendSwitch extends StatelessWidget {
  const AdSpendSwitch({
    super.key,
    required this.isAdSpendEnabled,
    required this.onTap,
  });

  final bool isAdSpendEnabled;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AColors.textFormFieldHintTextColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 31,
            child: FormFieldLabel(label: 'Ad Spend', isRequired: false),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 31,
              child: CupertinoSwitch(
                value: isAdSpendEnabled,
                onChanged: onTap,
                inactiveTrackColor: Color(0xFF6F6F76),
                activeTrackColor: AColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
