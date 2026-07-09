import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ReviewData {
  final String text;
  final String author;
  final String role;
  const ReviewData({required this.text, required this.author, required this.role});
}

class Reviews extends StatelessComponent {
  const Reviews({super.key});

  static const List<ReviewData> reviewsList = [
    ReviewData(
      text: '“Exactly what I was searching for! Minimalist, clean, and 100% private. The haptic feedback makes it feel like I’m moving real prayer beads. I highly appreciate that there are absolutely no ads.”',
      author: 'Prachi Thakkar',
      role: 'Friend',
    ),
    ReviewData(
      text: '“The daily streaks and heatmap tracking kept me disciplined. It is so easy to add custom mantras and choose bead styles like Tulsi. It has become my favorite spiritual travel app.”',
      author: 'Tushar Pandya',
      role: 'Friend',
    ),
    ReviewData(
      text: '“A rare gem on the Play Store. No login, no cloud sync, no tracking permissions. All database storage is local. Thank you developer for respecting user privacy and keeping it ad-free.”',
      author: 'Sneha Rao',
      role: 'Yoga Enthusiast',
    ),
    ReviewData(
      text: '“Beautifully crafted app. The haptic feedback is incredibly satisfying and the minimalist design helps me stay focused during my daily chanting. Highly recommend to anyone on a spiritual journey.”',
      author: 'Ravi Deshmukh',
      role: 'Mindfulness Coach',
    ),
    ReviewData(
      text: '“I have tried many Japa counter apps but this one stands out. The privacy-first approach and the beautiful Rudraksha bead simulation make it feel truly authentic. A must-have for serious practitioners.”',
      author: 'Ananya Iyer',
      role: 'Yoga Instructor',
    ),
    ReviewData(
      text: '“Finally an app that respects both tradition and privacy. No ads, no tracking, just pure devotion. The streak tracking has helped me maintain my daily practice for over 3 months now.”',
      author: 'Vikram Joshi',
      role: 'Friend',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return section(
      id: 'reviews',
      classes: 'section-padding section-tinted-bg reveal',
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
            for (var review in reviewsList)
              div(classes: 'review-card animate-fade-in-up', [
                div(classes: 'review-card-top', [
                  // Vector Gold Stars
                  div(classes: 'review-stars', [
                    for (int i = 0; i < 5; i++)
                      raw('''
                      <svg viewBox="0 0 24 24" width="16" height="16" fill="#C99512" style="margin-right: 2px;">
                        <polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon>
                      </svg>
                      ''')
                  ]),
                  p(classes: 'review-text', [text(review.text)]),
                ]),
                div(classes: 'review-author', [
                  div(classes: 'author-avatar-gradient', [
                    text(review.author.substring(0, 1))
                  ]),
                  div(classes: 'author-info', [
                    h4([text(review.author)]),
                    span(classes: 'author-role', [text(review.role)]),
                    span(classes: 'verified-badge', [
                      raw('''
                      <svg viewBox="0 0 24 24" width="12" height="12" fill="none" stroke="#C99512" stroke-width="3" style="display: inline-block; vertical-align: middle; margin-right: 4px;">
                        <polyline points="20 6 9 17 4 12"></polyline>
                      </svg>
                      '''),
                      text('Verified Reviewer')
                    ]),
                  ])
                ])
              ])
          ])
        ])
      ]
    );
  }
}
