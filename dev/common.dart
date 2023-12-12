import 'dart:io';

const dataMap = {
  'acanthro': 'Arm Circumference',
  'bmianthro': 'Body Mass Index',
  'hcanthro': 'Head Circumference',
  'lenanthro': 'Length For Age',
  'ssanthro': 'Subscapular Skinfold',
  'tsanthro': 'Triceps Skinfold',
  'weianthro': 'Weight For Age',
  'wfhanthro': 'Weight For Height',
  'wflanthro': 'Weight For Length',
};

void format() {
  Process.run('dart', ['format', '.']);
  Process.run('dart', ['fix', '--apply']);
}
