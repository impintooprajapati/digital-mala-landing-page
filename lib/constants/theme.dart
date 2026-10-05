import 'package:jaspr/dom.dart';

// Brand Colors
const backgroundColor = Color('#FCF9F3');
const surfaceColor = Color('#FFFFFF');
const primaryColor = Color('#251D17');
const accentColor = Color('#D79A16');
const borderColor = Color('#E8E1D7');
const secondaryTextColor = Color('#70675F');

@css
List<StyleRule> get styles => [
  // HTML & Body defaults
  css('html, body').styles(
    width: 100.percent,
    minHeight: 100.vh,
    padding: .zero,
    margin: .zero,
  ),
];
