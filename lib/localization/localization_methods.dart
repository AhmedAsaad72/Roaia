import 'package:flutter/material.dart';

import 'set_localization.dart';

String tr( String key ,BuildContext context) {
  return SetLocalization.of(context)?.getTranslateValue(key) ?? "";
}
