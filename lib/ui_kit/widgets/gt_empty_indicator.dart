import 'package:flutter/material.dart';
import 'package:framework/constants/strings.dart';
import 'package:framework/theme/app_theme_data/app_theme_data.dart';
import 'package:framework/theme/app_theme_widget.dart';
import 'package:framework/ui_kit/widgets/gt_text.dart';

class GTEmptyIndicator extends StatelessWidget {
  const GTEmptyIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context).theme;
    return Center(
      child: GTText(
        Strings.emptyData,
        typography: TypographyFamily.headline4,
        color: appTheme.colors.defaultText,
      ),
    );
  }
}
