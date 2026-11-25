import 'package:flutter/material.dart';
import 'package:studio_core/app/approved_hub.dart';

/// Onaylı tasarım (Oyun Merkezleri · Tasarım Örnekleri).
const approvedStyle = ApprovedHubStyle(
  background: [Color(0xFF33208E), Color(0xFF1E1262), Color(0xFF0E0836)],
  accent: Color(0xFFFF5BC8),
  card: Color(0xFF34228C),
  play: Color(0xFF1FA2F2),
  number: Color(0xFFFFFFFF),
  heroAsset: 'assets/approved/hero.png',
  blocks: [ApprovedBlock.campaign, ApprovedBlock.featured],
  featuredKey: 'featured',
  featured: ['oyun-sira-tabanli-taktik', 'oyun-zindan-kesfi', 'oyun-altigen-savas-oyunu'],
  tileArt: {
    'oyun-sira-tabanli-taktik': 'assets/approved/tile_taktik.png',
    'oyun-zindan-kesfi': 'assets/approved/tile_zindan.png',
    'oyun-altigen-savas-oyunu': 'assets/approved/tile_hex.png',
  },
);
