class WellnessArticle {
  final String id;
  final String title;
  final String category;
  final String content;
  final String summary;
  final int readTimeMinutes;
  final String imageUrl;

  WellnessArticle({
    required this.id,
    required this.title,
    required this.category,
    required this.content,
    required this.summary,
    required this.readTimeMinutes,
    required this.imageUrl,
  });
}

class WellnessArticleData {
  static List<WellnessArticle> getArticles() {
    return [
      WellnessArticle(
        id: '1',
        title: 'Understanding Your Emotions',
        category: 'Emotional Health',
        summary: 'Learn how to identify and process your emotions in a healthy way.',
        readTimeMinutes: 5,
        imageUrl: 'gradient_1', // 使用渐变背景
        content: '''
Emotions are a natural part of being human. They provide us with important information about our experiences and help guide our decisions.

**Why Understanding Emotions Matters**

When we understand our emotions, we can:
• Make better decisions
• Improve our relationships
• Reduce stress and anxiety
• Enhance our overall well-being

**The Basic Emotions**

Research shows that humans experience several basic emotions:
• Joy - feeling happy and content
• Sadness - feeling down or disappointed
• Anger - feeling frustrated or irritated
• Fear - feeling worried or anxious
• Surprise - feeling amazed or shocked
• Disgust - feeling repulsed or uncomfortable

**How to Process Emotions**

1. **Acknowledge** - Recognize what you're feeling
2. **Accept** - Allow yourself to feel without judgment
3. **Understand** - Explore why you feel this way
4. **Express** - Share your feelings in healthy ways
5. **Release** - Let go of negative emotions

**Practical Tips**

• Keep a mood journal to track your emotions
• Practice mindfulness meditation
• Talk to trusted friends or family
• Engage in physical activity
• Seek professional help when needed

Remember, all emotions are valid. The key is learning to experience them in healthy ways.
        ''',
      ),
      WellnessArticle(
        id: '2',
        title: 'Managing Stress and Anxiety',
        category: 'Mental Health',
        summary: 'Effective strategies to cope with stress and reduce anxiety in daily life.',
        readTimeMinutes: 7,
        imageUrl: 'gradient_2', // 使用渐变背景
        content: '''
Stress and anxiety are common experiences in modern life. While some stress is normal, chronic stress can impact your health and well-being.

**Understanding Stress vs. Anxiety**

**Stress** is a response to external pressures:
• Work deadlines
• Financial concerns
• Relationship issues
• Major life changes

**Anxiety** is internal worry that persists even without external stressors:
• Constant worry about the future
• Physical symptoms (racing heart, sweating)
• Difficulty concentrating
• Sleep problems

**Effective Coping Strategies**

1. **Breathing Exercises**
   • Practice deep breathing
   • Try the 4-7-8 technique
   • Use box breathing for quick relief

2. **Physical Activity**
   • Exercise releases endorphins
   • Even 10 minutes helps
   • Try yoga or walking

3. **Mindfulness & Meditation**
   • Focus on the present moment
   • Use guided meditation apps
   • Practice daily for best results

4. **Time Management**
   • Prioritize tasks
   • Break large projects into steps
   • Learn to say no

5. **Social Connection**
   • Talk to friends and family
   • Join support groups
   • Don't isolate yourself

**When to Seek Help**

Consider professional help if:
• Anxiety interferes with daily life
• You experience panic attacks
• Stress feels overwhelming
• You have thoughts of self-harm

**Quick Relief Techniques**

• 5-4-3-2-1 grounding exercise
• Progressive muscle relaxation
• Take a short walk
• Listen to calming music
• Practice gratitude

Remember, managing stress is a skill that improves with practice. Be patient with yourself.
        ''',
      ),
      WellnessArticle(
        id: '3',
        title: 'The Power of Gratitude',
        category: 'Positive Psychology',
        summary: 'Discover how practicing gratitude can transform your mental health.',
        readTimeMinutes: 4,
        imageUrl: 'gradient_3', // 使用渐变背景
        content: '''
Gratitude is more than just saying "thank you." It's a powerful practice that can significantly improve your mental health and overall well-being.

**Benefits of Gratitude**

Research shows that regular gratitude practice can:
• Increase happiness and life satisfaction
• Reduce depression and anxiety
• Improve sleep quality
• Strengthen relationships
• Boost physical health
• Enhance resilience

**How to Practice Gratitude**

1. **Keep a Gratitude Journal**
   • Write 3 things you're grateful for daily
   • Be specific and detailed
   • Include small moments

2. **Express Appreciation**
   • Tell people you appreciate them
   • Write thank-you notes
   • Share positive feedback

3. **Mindful Moments**
   • Pause to appreciate good moments
   • Notice beauty around you
   • Savor positive experiences

4. **Gratitude Meditation**
   • Reflect on blessings
   • Send gratitude to others
   • Feel thankfulness in your body

**Making It a Habit**

• Set a daily reminder
• Link it to existing habits (morning coffee, bedtime)
• Start small - even 2 minutes helps
• Be consistent

**Gratitude Prompts**

• What made you smile today?
• Who helped you recently?
• What comfort do you appreciate?
• What ability are you grateful for?
• What challenge taught you something?

**Beyond the Basics**

• Create a gratitude jar
• Share gratitude with family at dinner
• Take photos of things you appreciate
• Practice gratitude during difficult times

The key is consistency. Even on hard days, finding one thing to be grateful for can shift your perspective.
        ''',
      ),
      WellnessArticle(
        id: '4',
        title: 'Building Emotional Resilience',
        category: 'Personal Growth',
        summary: 'Learn how to bounce back from challenges and build inner strength.',
        readTimeMinutes: 6,
        imageUrl: 'gradient_4', // 使用渐变背景
        content: '''
Emotional resilience is the ability to adapt to stressful situations and bounce back from adversity. It's not about avoiding difficulties, but learning to navigate them effectively.

**What is Resilience?**

Resilience involves:
• Adapting to change
• Recovering from setbacks
• Growing through challenges
• Maintaining perspective
• Finding meaning in difficulties

**Key Components of Resilience**

1. **Self-Awareness**
   • Understand your emotions
   • Recognize your triggers
   • Know your strengths

2. **Emotional Regulation**
   • Manage intense feelings
   • Use healthy coping strategies
   • Practice self-soothing

3. **Optimism**
   • Maintain hope
   • Focus on possibilities
   • Believe in your ability to cope

4. **Strong Connections**
   • Build supportive relationships
   • Ask for help when needed
   • Offer support to others

5. **Problem-Solving**
   • Break problems into steps
   • Consider multiple solutions
   • Take action

**Building Resilience**

**Daily Practices:**
• Practice self-care
• Exercise regularly
• Get adequate sleep
• Eat nutritious foods
• Limit alcohol and caffeine

**Mental Strategies:**
• Reframe negative thoughts
• Focus on what you can control
• Learn from past challenges
• Set realistic goals
• Celebrate small wins

**Social Support:**
• Nurture close relationships
• Join communities
• Volunteer or help others
• Share your struggles

**Resilience in Action**

When facing challenges:
1. Acknowledge your feelings
2. Take a step back
3. Assess the situation
4. Identify your options
5. Take small actions
6. Seek support
7. Learn and grow

**Remember:**
• Resilience is a skill, not a trait
• It can be developed at any age
• Everyone's path is different
• Progress isn't always linear
• Self-compassion is essential

Building resilience takes time and practice. Be patient with yourself as you develop these skills.
        ''',
      ),
      WellnessArticle(
        id: '5',
        title: 'The Importance of Self-Care',
        category: 'Wellness',
        summary: 'Why taking care of yourself isn\'t selfish - it\'s essential.',
        readTimeMinutes: 5,
        imageUrl: 'gradient_5', // 使用渐变背景
        content: '''
Self-care isn't selfish or indulgent - it's a necessary practice for maintaining your physical, mental, and emotional health.

**What is Self-Care?**

Self-care is any activity that we deliberately do to take care of our mental, emotional, and physical health. It's about being as kind to yourself as you would be to others.

**Why Self-Care Matters**

• Reduces stress and anxiety
• Improves physical health
• Enhances productivity
• Boosts self-esteem
• Prevents burnout
• Improves relationships

**Types of Self-Care**

**Physical Self-Care:**
• Regular exercise
• Adequate sleep (7-9 hours)
• Nutritious meals
• Regular health check-ups
• Staying hydrated

**Emotional Self-Care:**
• Journaling
• Therapy or counseling
• Setting boundaries
• Saying no when needed
• Processing emotions

**Mental Self-Care:**
• Reading
• Learning new skills
• Puzzles or games
• Limiting news consumption
• Mindfulness practice

**Social Self-Care:**
• Spending time with loved ones
• Joining clubs or groups
• Maintaining friendships
• Asking for support
• Setting healthy boundaries

**Spiritual Self-Care:**
• Meditation
• Prayer or reflection
• Time in nature
• Practicing gratitude
• Exploring your values

**Creating a Self-Care Routine**

1. **Assess Your Needs**
   • What areas need attention?
   • What energizes you?
   • What drains you?

2. **Start Small**
   • Choose 1-2 practices
   • Make them realistic
   • Build gradually

3. **Schedule It**
   • Treat it like an appointment
   • Put it in your calendar
   • Protect this time

4. **Be Flexible**
   • Adjust as needed
   • Different days need different care
   • Listen to your body

**Quick Self-Care Ideas**

• 5-minute meditation
• Short walk outside
• Favorite music
• Hot bath or shower
• Call a friend
• Stretch or yoga
• Healthy snack
• Deep breathing

**Overcoming Barriers**

"I don't have time"
→ Start with 5 minutes
→ Combine activities
→ Make it a priority

"I feel guilty"
→ Remember: you can't pour from an empty cup
→ Self-care helps you help others
→ You deserve care too

"I don't know what I need"
→ Experiment with different activities
→ Notice what makes you feel better
→ Ask yourself what you need

**Remember:**
Self-care is not a luxury - it's a necessity. Taking care of yourself enables you to show up better for others and live a more fulfilling life.
        ''',
      ),
    ];
  }
}

