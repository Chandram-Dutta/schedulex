import 'package:flutter/material.dart';

bool isDesktop(BuildContext context) {
  if (MediaQuery.of(context).size.width < 800) {
    return false;
  } else
    return true;
}
