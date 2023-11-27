import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.enableLightMode();
            },
            child: provider.isDarkEnabled()
                ? getUnselectedWidget(
                    AppLocalizations.of(context)!.light, context)
                : getSelectedWidget(
                    AppLocalizations.of(context)!.light, context),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.enableDarkMode();
            },
            child: provider.isDarkEnabled()
                ? getSelectedWidget(AppLocalizations.of(context)!.dark, context)
                : getUnselectedWidget(
                    AppLocalizations.of(context)!.dark, context),
          )
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).hintColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).hintColor,
        )
      ],
    );
  }

  Widget getUnselectedWidget(String title, BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
