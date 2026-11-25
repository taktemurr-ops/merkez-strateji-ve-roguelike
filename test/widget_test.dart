import 'package:flutter_test/flutter_test.dart';
import 'package:merkez_strateji_ve_roguelike/main.dart';

void main() {
  test('merkezde oyunlar benzersiz kimlikle yer alıyor', () {
    final ids = hubConfig.games.map((g) => g.gameId).toList();
    expect(ids, [
      'oyun-zindan-kesfi',
      'oyun-deste-kurma',
      'oyun-hayatta-kalma',
      'oyun-zar-macerasi',
      'oyun-altigen-savas-oyunu',
      'oyun-sira-tabanli-taktik',
      'oyun-kum-saati-arenasi',
      'oyun-otomatik-savasci',
      'oyun-vadi-kurucu',
      'oyun-dort-mevsim-krallik',
      'oyun-harita-defteri',
      'oyun-zindan-ustasi',
    ]);
    final all = hubConfig.allGames.map((g) => g.gameId).toList();
    expect(all.length, ids.length + 0);
    expect(all.toSet().length, all.length);
    expect(ids.toSet().length, ids.length);
    for (final g in hubConfig.allGames) {
      expect(g.rules.gameId, g.gameId, reason: 'kayıt öneki oyun kimliğiyle aynı olmalı');
    }
    expect(hubConfig.title.length, 33);
    expect(hubConfig.tagline.length, 33);
  });

  test('her oyun ve grup bir bölüm başlığı altında', () {
    final ids = {for (final s in hubConfig.sections) ...s.ids};
    for (final g in hubConfig.games) {
      expect(ids.contains(g.gameId), isTrue, reason: g.gameId);
    }
    for (final s in hubConfig.sections) {
      expect(s.title.length, 33);
    }
  });
}
