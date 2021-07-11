import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../tips/tip_image.dart';
import '../tips/getting_tip.dart';
import '../tips/know_tip.dart';
import '../tips/motivate_tip.dart';
import '../tips/realistic_tip.dart';
import '../router.dart';
import '../tips/tips.dart';

class TipSection extends StatelessWidget {
  Widget _getPage(String tipId) {
    switch (tipId) {
      case 'gettingStarted':
        return GettingTip();
      case 'knowHeavier':
        return KnowTip();
      case 'motivateYourself':
        return MotivateTip();
      case 'setRealistic':
        return RealisticTip();
      default:
        return throw Exception('Tip id not exist: $tipId');
    }
  }

  Widget _buildTipItem(BuildContext context, int index) {
    final id = tips[index]['id'];
    final name = tips[index]['name'];
    final brightness = tips[index]['brightness'] as Brightness;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TipImage(
        title: name,
        image: 'assets/images/tips/$id.jpg',
        imageBrightness: brightness,
        displayText: true,
        onTap: () => Router.goTo(context, _getPage(id)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.all(6.0),
          itemCount: tips.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 400),
              child: SlideAnimation(
                verticalOffset: 30.0,
                child: FadeInAnimation(
                  child: _buildTipItem(context, index),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
