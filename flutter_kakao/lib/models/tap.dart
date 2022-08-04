import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tap {
  final IconData icon;
  final String text;

  Tap(this.icon, this.text);
}

List<Tap> taps = [
  Tap(FontAwesomeIcons.envelope, "메일"),
  Tap(FontAwesomeIcons.calendar, "캘린더"),
  Tap(FontAwesomeIcons.archway, "서랍"),
  Tap(FontAwesomeIcons.gift, "선물하기"),
  Tap(FontAwesomeIcons.empire, "이모티콘"),
  Tap(FontAwesomeIcons.shoppingBag, "쇼핑하기"),
  Tap(FontAwesomeIcons.smile, "스타일"),
];
