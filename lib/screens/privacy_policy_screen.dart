import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/zaly_allbg.webp',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + kToolbarHeight + 24,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
              'Privacy Policy',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            _buildSection(
              context,
              '1. Introduction',
              'Zaly ("we", "our", or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application.',
            ),
            _buildSection(
              context,
              '2. Information We Collect',
              'We may collect information about you in a variety of ways. The information we may collect via the app includes:\n\n• Personal Data: Name, email address, and other contact information that you voluntarily give to us\n• Usage Data: Information about how you use the app, including your interactions with challenges and content\n• Device Information: Device type, operating system, unique device identifiers, and mobile network information\n• Location Data: If you grant permission, we may collect location data',
            ),
            _buildSection(
              context,
              '3. How We Use Your Information',
              'We use the information we collect to:\n\n• Provide, maintain, and improve our services\n• Process your transactions and send you related information\n• Send you technical notices, updates, and support messages\n• Respond to your comments, questions, and requests\n• Monitor and analyze trends, usage, and activities\n• Personalize and improve your experience',
            ),
            _buildSection(
              context,
              '4. Information Sharing and Disclosure',
              'We do not sell, trade, or rent your personal information to third parties. We may share your information only in the following situations:\n\n• With your consent\n• To comply with legal obligations\n• To protect and defend our rights or property\n• With service providers who assist us in operating our app\n• In connection with a business transfer',
            ),
            _buildSection(
              context,
              '5. Data Security',
              'We implement appropriate technical and organizational security measures to protect your personal information. However, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee absolute security.',
            ),
            _buildSection(
              context,
              '6. Your Privacy Rights',
              'Depending on your location, you may have the following rights regarding your personal information:\n\n• Access: You can request access to your personal data\n• Correction: You can request correction of inaccurate data\n• Deletion: You can request deletion of your personal data\n• Portability: You can request transfer of your data\n• Objection: You can object to processing of your data',
            ),
            _buildSection(
              context,
              '7. Children\'s Privacy',
              'Our app is not intended for children under the age of 13. We do not knowingly collect personal information from children under 13. If you are a parent or guardian and believe your child has provided us with personal information, please contact us immediately.',
            ),
            _buildSection(
              context,
              '8. Cookies and Tracking Technologies',
              'We may use cookies and similar tracking technologies to track activity on our app and store certain information. You can instruct your device to refuse all cookies or to indicate when a cookie is being sent.',
            ),
            _buildSection(
              context,
              '9. Third-Party Services',
              'Our app may contain links to third-party websites or services. We are not responsible for the privacy practices of these third parties. We encourage you to read their privacy policies.',
            ),
            _buildSection(
              context,
              '10. Changes to This Privacy Policy',
              'We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page and updating the "Last updated" date.',
            ),
            _buildSection(
              context,
              '11. Contact Us',
              'If you have any questions about this Privacy Policy, please contact us at:\n\nEmail: privacy@Velvy.com\n',
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: AppTheme.primaryColor,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      'Last updated: 2025-11',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.6,
                  color: Colors.grey[700],
                ),
          ),
        ],
      ),
    );
  }
}

