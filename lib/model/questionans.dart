import 'package:new_quiz/classquestion .dart';

const quizquestions = [
  question("What is the basic building block of flutter UI'S",
      ['widget', 'component', 'block', 'function']),
  question('How are flutter UIs work', [
    'by combining widget in code',
    'by combining widget in visual editor',
    'by combining widget in config files',
    'by using xcode for iosnd andriod studio for andriod'
  ]),
  question('Purpose of stateful widget', [
    'update ui as data change ',
    'update data as ui change',
    'ignore data change',
    'render ui that does not depend on data'
  ]),
  question('What widget should you try to more as often',
      ['StatefullWidget', 'StatelessWidget', 'both of them ', 'none of them']),
  question('What happen if u change data in StatelessWidget', [
    'update ui',
    'ui not updated',
    'the closest StatefulWideget is updated',
    'any nested StatefulWidget is updated'
  ]),
  question('How would you update data inside of StatefulWidget', [
    'by calling set state',
    'by calling init state',
    'by calling update ui',
    'by calling update state'
  ])
];
