import 'package:flutter/material.dart';
import 'tip_image.dart';
import 'tip_template.dart';

const description =
    '''Smart goal setting is a fundamental tool for long term fitness success. It sets clear direction and also provides short term satisfaction from achieving your targets.''';

const first =
    '''In order to create a realistic plan to achieve your ultimate goal, break it down to smaller milestones. Then, carefully define your short term goals so that your focus is on achieving them, instead of on the frustration that you haven’t met your ultimate goal in record time.''';

const second =
    '''Firstly, verify with your current schedule how many weekly workouts you can handle. Then, choose your ultimate goal based on your CURRENT fitness level. Once your plan is ready, spice it up by choosing exercises you would like to set a new personal record.''';

const third =
    '''Trying to tackle multiple goals at one time, can lead to negative self-talk that lowers your chances of achieving any of the goals. Instead, pick one thing you want to crush—like, setting a new personal record, or work out more —and channel your efforts into achieving that before exploring another goal.''';

const fourth =
    '''You should feel super confident when it comes to your belief that you’ll actually achieve your short term goal. 

So, instead of setting yourself to work out twelve times next month, start with three next week. Having success early on is especially important as it builds confidence that can snowball into long-term results.''';

const fifth =
    '''There isn't an exact protocol here, so the simple answer is: You should aim to add more weight as often as you can while staying at your target rep range and maintaining proper form. If you are just starting out, you will increase quickly (every few weeks), and then less often.''';

class RealisticTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TipTemplate(
      image: TipImage(
        title: 'Set Realistic Fitness',
        image: 'assets/images/tips/setRealistic.jpg',
        imageBrightness: Brightness.dark,
      ),
      body: <Widget>[
        TipParagraph(description),
        TipHeader('Ultimate Goal = Several Manageable Goals'),
        TipParagraph(first),
        Image(image: AssetImage('assets/images/tips/setRealistic1.jpg')),
        TipHeader('How to Set Short Term Goals?'),
        TipParagraph(second),
        Image(image: AssetImage('assets/images/tips/setRealistic2.jpg')),
        TipHeader('Focus on One Goal at a Time'),
        TipParagraph(third),
        TipHeader('Start Small'),
        TipParagraph(fourth),
        Image(image: AssetImage('assets/images/tips/setRealistic3.jpg')),
        TipHeader('Make it Measurable & Specific'),
        TipParagraph(fifth),
      ],
    );
  }
}
