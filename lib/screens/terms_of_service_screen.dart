import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Service'),
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
              'Terms of Service',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 24),
            _buildSection(
              context,
              '1. Acceptance of Terms',
              'By accessing and using Zaly, you accept and agree to be bound by the terms and provision of this agreement.',
            ),
            _buildSection(
              context,
              '2. Use License',
              'Permission is granted to temporarily download one copy of Zaly for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:\n\n• Modify or copy the materials\n• Use the materials for any commercial purpose or for any public display\n• Attempt to decompile or reverse engineer any software contained in Zaly\n• Remove any copyright or other proprietary notations from the materials',
            ),
            _buildSection(
              context,
              '3. User Accounts',
              'You are responsible for maintaining the confidentiality of your account and password. You agree to accept responsibility for all activities that occur under your account or password.',
            ),
            _buildSection(
              context,
              '4. User Content',
              'You retain ownership of any content you submit, post or display on or through Zaly. By submitting, posting or displaying content on or through Zaly, you grant us a worldwide, non-exclusive, royalty-free license to use, reproduce, modify, adapt, publish, translate, and distribute such content.',
            ),
            _buildSection(
              context,
              '5. Prohibited Uses',
              'You may not use Zaly:\n\n• In any way that violates any applicable national or international law or regulation\n• To transmit, or procure the sending of, any advertising or promotional material\n• To impersonate or attempt to impersonate the company, a company employee, another user, or any other person or entity\n• In any way that infringes upon the rights of others, or in any way is illegal, threatening, fraudulent, or harmful',
            ),
            _buildSection(
              context,
              '6. Privacy Policy',
              'Your use of Zaly is also governed by our Privacy Policy. Please review our Privacy Policy to understand our practices.',
            ),
            _buildSection(
              context,
              '7. Disclaimer',
              'The materials on Zaly are provided on an "as is" basis. Zaly makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties including, without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.',
            ),
            _buildSection(
              context,
              '8. Limitations',
              'In no event shall Zaly or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use Zaly, even if Zaly or a Zaly authorized representative has been notified orally or in writing of the possibility of such damage.',
            ),
            _buildSection(
              context,
              '9. Revisions',
              'Zaly may revise these terms of service for its app at any time without notice. By using Zaly you are agreeing to be bound by the then current version of these terms of service.',
            ),
            _buildSection(
              context,
              '10. Contact Information',
              'If you have any questions about these Terms of Service, please contact us at support@zaly.com.',
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

