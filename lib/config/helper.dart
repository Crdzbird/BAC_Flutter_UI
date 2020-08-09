import 'dart:math';

import 'package:flutter/widgets.dart';

double autoSize({@required int quoteLength, @required int parentArea}) {
  assert(quoteLength != null, "`quoteLength` may not be null");
  assert(parentArea != null, "`parentArea` may not be null");
  final areaOfLetter = parentArea / quoteLength;
  final pixelOfLetter = sqrt(areaOfLetter);
  final pixelOfLetterP = pixelOfLetter - (pixelOfLetter * 5) / 100;
  return pixelOfLetterP;
}
