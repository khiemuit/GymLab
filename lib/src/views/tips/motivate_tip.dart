import 'package:flutter/material.dart';
import 'tip_image.dart';
import 'tip_template.dart';

const description =
    '''When we try to develop a new habit, it takes three months for the mind & body to truly adapt & convert the routine into a real habit. Here are some practical steps you can implement  immediately and will help you get past those first three months:''';

const first =
    '''Firstly, you can set up your virtual environment. Like any other appointment, having it already blocked off in your calendar will make it seem less optional. Secondly, pack your gym bag ahead for your next workout. Once it's always waiting for you near the door, you'll have one less reason to procrastinate.''';

const second =
    '''By recording weights & reps, you’ll be able to see actual progress. That record can come in handy when you’re feeling uninspired. Instead of counting on your memory about how much you've improved, you can easily log your workouts and see your progression over time.''';

const third =
    '''Doing any task repeatedly gets pretty boring, while our body adapts to a routine. Our plans are varied and will keep you challenged and excited about working out.''';

const fourth =
    '''Listening to music can enhance performance by up to 15%. It's always good to get in the zone before & during your workouts while listening to your favorite uptempo music. Alternatively, you can develop the mind while exercising by listening to podcasts to make time fly. ''';

const fifth =
    '''Our mind will always make sure to remind us about all possible excuses to cancel workouts, but let's face it, no one feels 100% excited to train on every scheduled workout. That doesn't mean we can't still check-in at the gym and doing our best for that day. Whether that means pedaling slower or lifting less, you'll find out that showing up is most of the challenge. Once you manage your energy between life & fitness correctly, you'll never regret a workout, but will always regret the workout you skipped.''';

class MotivateTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TipTemplate(
      image: TipImage(
        title: 'Motivate yourself',
        image: 'assets/images/tips/motivateYourself.jpg',
        imageBrightness: Brightness.dark,
      ),
      body: <Widget>[
        TipParagraph(description),
        TipHeader('Set up your environment'),
        TipParagraph(first),
        Image(image: AssetImage('assets/images/tips/motivateYourself1.jpg')),
        TipHeader('Track your progress'),
        TipParagraph(second),
        Image(image: AssetImage('assets/images/tips/motivateYourself2.jpg')),
        TipHeader('Keep varying your exercises'),
        TipParagraph(third),
        TipHeader('Listen to your favorite jams or podcasts'),
        TipParagraph(fourth),
        Image(image: AssetImage('assets/images/tips/motivateYourself3.jpg')),
        TipHeader('Spend your energy wisely'),
        TipParagraph(fifth),
      ],
    );
  }
}
