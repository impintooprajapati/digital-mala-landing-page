import 'package:jaspr/dom.dart';

// Brand Colors
const backgroundColor = Color('#FAF7F2');
const surfaceColor = Color('#FFFFFF');
const primaryColor = Color('#2D2A29');
const accentColor = Color('#C99512');
const borderColor = Color('#EAE5DB');
const secondaryTextColor = Color('#7D7770');

@css
List<StyleRule> get styles => [
  // Special import rule to include Google Fonts in server pre-render
  css.import('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500&family=Inter:wght@300;400;500;600;700&display=swap'),
  
  // HTML & Body defaults
  css('html, body').styles(
    width: 100.percent,
    minHeight: 100.vh,
    padding: .zero,
    margin: .zero,
  ),
];
