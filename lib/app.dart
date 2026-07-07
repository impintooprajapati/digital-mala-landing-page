import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

// Import our custom pages
import 'pages/home_page.dart';
import 'pages/privacy_policy.dart';
import 'pages/terms_of_service.dart';

// The main component of the application.
//
// By using the @client annotation, this component will be automatically compiled to Javascript and mounted
// on the client, enabling interactive client-side state and navigation.
@client
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        Route(
          path: '/privacy-policy',
          builder: (context, state) => const PrivacyPolicyPage(),
        ),
        Route(
          path: '/terms-of-service',
          builder: (context, state) => const TermsOfServicePage(),
        ),
      ],
    );
  }
}

