import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ReviewData {
  final String rating;
  final String text;
  final String author;
  final String role;
  const ReviewData({required this.rating, required this.text, required this.author, required this.role});
}

class Reviews extends StatelessComponent {
  const Reviews({super.key});

  static const List<ReviewData> reviewsList = [
    ReviewData(
      rating: '⭐⭐⭐⭐⭐',
      text: '“Exactly what I was searching for! Minimalist, clean, and 100% private. The haptic feedback makes it feel like I’m moving real prayer beads. I highly appreciate that there are absolutely no ads.”',
      author: 'Amit Sharma',
      role: 'Daily Sadhana Practitioner',
    ),
    ReviewData(
      rating: '⭐⭐⭐⭐⭐',
      text: '“The daily streaks and heatmap tracking kept me disciplined. It is so easy to add custom mantras and choose bead styles like Tulsi. It has become my favorite spiritual travel app.”',
      author: 'Priyanshu Patel',
      role: 'Meditation Teacher',
    ),
    ReviewData(
      rating: '⭐⭐⭐⭐⭐',
      text: '“A rare gem on the Play Store. No login, no cloud sync, no tracking permissions. All database storage is local. Thank you developer for respecting user privacy and keeping it ad-free.”',
      author: 'Sneha Rao',
      role: 'Yoga Enthusiast',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'reviews',
      classes: 'section-padding reveal',
      styles: const Styles(backgroundColor: Color('#FAF7F2')),
      [
        div(classes: 'container', [
          // Section Title
          div(classes: 'section-title-wrap', [
            h2([text('Loved by the Community')]),
            p([
              text('See how others are using Digital Mala to bring structure and consistency to their daily mantra chanting meditation.')
            ]),
          ]),

          // Reviews Grid
          div(classes: 'reviews-grid', [
            // Wait, we need to loop through reviewsList
            for (var review in reviewsList)
              // Wait, since we had a small copy-paste issue where we typed FeatureItem, let's make sure it uses ReviewData.
              div(classes: 'review-card', [
                div([
                  div(classes: 'review-stars', [text(review.rating)]),
                  p(classes: 'review-text', [text(review.text)]),
                ]),
                div(classes: 'review-author', [
                  div(classes: 'author-avatar', [
                    text(review.author.substring(0, 1))
                  ]),
                  div(classes: 'author-info', [
                    h4([text(review.author)]),
                    span([text(review.role)]),
                  ])
                ])
              ])
          ])
        ])
      ]
    );
  }
}
