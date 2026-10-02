import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'section_header.dart';

class ReviewData {
  final String text, author, role;
  const ReviewData({required this.text, required this.author, required this.role});
}

class Reviews extends StatelessComponent {
  const Reviews({super.key});
  static const List<ReviewData> reviewsList = [
    ReviewData(
      text:
          '“Exactly what I was searching for! Minimalist, clean, and 100% private. The haptic feedback makes it feel like I’m moving real prayer beads. I highly appreciate that there are absolutely no ads.”',
      author: 'Prachi Thakkar',
      role: 'Friend',
    ),
    ReviewData(
      text:
          '“The daily streaks and heatmap tracking kept me disciplined. It is so easy to add custom mantras and choose bead styles like Tulsi. It has become my favorite spiritual travel app.”',
      author: 'Tushar Pandya',
      role: 'Friend',
    ),
    ReviewData(
      text:
          '“A rare gem on the Play Store. No login, no cloud sync, no tracking permissions. All database storage is local. Thank you developer for respecting user privacy and keeping it ad-free.”',
      author: 'Sneha Rao',
      role: 'Yoga Enthusiast',
    ),
    ReviewData(
      text:
          '“Beautifully crafted app. The haptic feedback is incredibly satisfying and the minimalist design helps me stay focused during my daily chanting. Highly recommend to anyone on a spiritual journey.”',
      author: 'Ravi Deshmukh',
      role: 'Mindfulness Coach',
    ),
    ReviewData(
      text:
          '“I have tried many Japa counter apps but this one stands out. The privacy-first approach and the beautiful Rudraksha bead simulation make it feel truly authentic. A must-have for serious practitioners.”',
      author: 'Ananya Iyer',
      role: 'Yoga Instructor',
    ),
    ReviewData(
      text:
          '“Finally an app that respects both tradition and privacy. No ads, no tracking, just pure devotion. The streak tracking has helped me maintain my daily practice for over 3 months now.”',
      author: 'Vikram Joshi',
      role: 'Friend',
    ),
  ];

  @override
  Component build(BuildContext context) => section(id: 'reviews', classes: 'section-padding reviews-section', [
    div(classes: 'container', [
      const SectionHeader(
        eyebrow: 'Shared experiences',
        title: 'Loved by the Community',
        description: 'Small moments of focus. Meaningful changes in a daily practice.',
      ),
      div(classes: 'reviews-grid', [
        for (final entry in reviewsList.take(3).indexed) ReviewCard(review: entry.$2, featured: entry.$1 == 0),
      ]),
      details(classes: 'more-reviews', [
        summary([Component.text('Read more community experiences')]),
        div(classes: 'reviews-grid', [
          for (final review in reviewsList.skip(3)) ReviewCard(review: review),
        ]),
      ]),
    ]),
  ]);
}

class ReviewCard extends StatelessComponent {
  final ReviewData review;
  final bool featured;
  const ReviewCard({required this.review, this.featured = false, super.key});
  @override
  Component build(BuildContext context) => article(classes: 'review-card${featured ? ' featured' : ''}', [
    div(
      classes: 'review-stars',
      attributes: {'aria-label': '5 out of 5 stars'},
      [
        span(attributes: {'aria-hidden': 'true'}, [Component.text('★★★★★')]),
      ],
    ),
    blockquote([
      p(classes: 'review-text', [Component.text(review.text)]),
    ]),
    div(classes: 'review-author', [
      span(
        classes: 'author-avatar',
        attributes: {'aria-hidden': 'true'},
        [Component.text(review.author.substring(0, 1))],
      ),
      div([
        strong([Component.text(review.author)]),
        if (review.role != 'Friend') span(classes: 'author-role', [Component.text(review.role)]),
      ]),
    ]),
  ]);
}
