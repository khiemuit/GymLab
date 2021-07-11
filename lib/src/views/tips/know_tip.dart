import 'package:flutter/material.dart';
import 'tip_image.dart';
import 'tip_template.dart';

const description =
    '''Once you understand this key factor to your fitness success and realize that you need to go heavier for more results, ask yourself these three questions:''';

const first =
    '''Results at the gym come in different forms, and the process of building sustainable lean muscle takes time. But if you're not seeing results after a strong commitment over the course of six weeks, it's very likely that you can make some changes to see results faster.

If you ask any experienced weightlifter what's the single most important factor in getting positive results from any type of workout routine, their answer will be "Progressive overload". This factor is what happens when you increase the demands being placed on your body through exercise.

Once your technique is solid, it’s time to note your energy level, because going up on a day when you’re tired is the perfect set-up for injury. You want to go up when you’re feeling strong and resilient.''';

const second =
    '''Just like a baby won't learn how to run before walking, a weightlifter will not raise the weights before completing all the reps. If your targeted rep range is 10, wait until you can perform 10 clean reps before bumping up the weight the following workout. You can set yourself a reminder to increase the weight once you log your last set.''';

const third =
    '''Once you’ve cleared the questions above and you’ve been lifting the same weight comfortably with a proper technique, it's time to go heavier! Don't let your ego lead you and always increase the weight gradually (2%-10% at most).

And lastly, before getting into beast mode with the free weights, get a spotter, so you challenge your personal record safely''';

class KnowTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TipTemplate(
      image: TipImage(
        title: 'Know when to go heavier',
        image: 'assets/images/meals/knowHeavier.jpg',
        imageBrightness: Brightness.dark,
      ),
      body: <Widget>[
        TipParagraph(description),
        TipHeader('1. How do I feel today?'),
        TipParagraph(first),
        TipHeader('2. Did I finish all the reps & sets?'),
        TipParagraph(second),
        TipHeader('3. How much weight should I add today?'),
        TipParagraph(third),
      ],
    );
  }
}
