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
  // Special import rule to include Google Fonts in server pre-render
  css.import(
    'https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Inter:wght@300;400;500;600;700&display=swap',
  ),

  // HTML & Body defaults
  css('html, body').styles(
    width: 100.percent,
    minHeight: 100.vh,
    padding: .zero,
    margin: .zero,
  ),
];
