import 'package:flutter/material.dart';
import 'ai_partner_screen.dart';

class HealingCenterScreen extends StatelessWidget {
  const HealingCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/zaly_healing_center.webp',
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            bottom: 134,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AIPartnerScreen(),
                  ),
                );
              },
              child: Image.asset(
                'assets/zaly_ai_partner.webp',
                width: 96,
                height: 96,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

