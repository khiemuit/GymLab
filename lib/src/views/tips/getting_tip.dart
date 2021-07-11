import 'package:flutter/material.dart';
import 'tip_image.dart';
import 'tip_template.dart';

const description =
    '''If you're new to weightlifting, these tips will help you get started the right way, after some mild stretches and a warm-up:''';

const first =
    '''Ideally, if you could find a coach to give you real-time feedback, it would be best. If not, check the full details in the exercise tab. Once you get familiarized with the movement patterns, go ahead and perform a couple of reps with a small weight at a very slow pace, while looking at the mirror if possible. 

In most cases, the specific body part that you are working on should be the only thing moving, your body is supposed to be static, and you should aim not to use momentum yet still reach the full range of motion.''';

const second =
    '''If you've never done any exercise before, start with 50% less than what you might expect to lift, and do a few reps with that to understand how it feels while making sure your form is spot on.

Then gradually work your way up in weight doing a few reps at a time. Once you hit a weight that feels challenging, where you need to slow down in order to complete all reps with good form, use that for your first set. After that process, you'll not only have a good idea of the weight you should use, but you're also warmed up for your first set.''';

const third =
    '''The ultimate bottom line when it comes to your entire muscle building workout plan is "Progressive Overload". Simply put, this law states that in order for you to experience continual, ongoing gains in muscle size, you must progressively increase the total amount of tension that is placed on your muscles. 

How ofter should you increase the weight?

There isn't an exact protocol here, so the simple answer is: You should aim to add more weight as often as you can while staying at your target rep range and maintaining proper form. If you are just starting out, you will increase quickly (every few weeks), and then less often.

How much weight to add?

A typical increase would be somewhere between 2%-10%.''';

const third2 =
    '''There isn't an exact protocol here, so the simple answer is: You should aim to add more weight as often as you can while staying at your target rep range and maintaining proper form. If you are just starting out, you will increase quickly (every few weeks), and then less often.''';

const third3 = '''A typical increase would be somewhere between 2%-10%.''';

class GettingTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TipTemplate(
      image: TipImage(
        title: 'Getting started with weightlifting',
        image: 'assets/images/meals/gettingStarted.jpg',
        imageBrightness: Brightness.dark,
      ),
      body: <Widget>[
        TipParagraph(description),
        TipHeader('1. Acquire the correct technique'),
        TipParagraph(first),
        TipHeader('2. Figure out your starting weight'),
        TipParagraph(second),
        TipHeader('3. Focus on steadily increasing the weight'),
        TipParagraph(third),
        TipHeader('How ofter should you increase the weight?'),
        TipParagraph(third2),
        TipHeader('How much weight to add?'),
        TipParagraph(third3),
      ],
    );
  }
}
