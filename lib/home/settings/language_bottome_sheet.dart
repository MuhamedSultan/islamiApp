import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
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
              provider.changeLanguage("en");
            },
              child: provider.languageCode=="en"?
              getSelectedWidget("English", context):
              getUnselectedWidget("English", context)
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
             child: provider.languageCode=="ar"?
                  getSelectedWidget("العربية", context):
                  getUnselectedWidget("العربية", context)

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
