import 'dart:core';

import 'package:flutter/material.dart';

class CustomGradient {
  // This method allows you to pass in a list of colors and stops
  static LinearGradient getCustomGradient({
    required List<Color> colors,
    required List<double> stops,
    Alignment begin = Alignment.topLeft,
    Alignment end = Alignment.bottomRight,
  }) {
    // Check if the number of colors and stops are the same
    assert(colors.length == stops.length, 'The number of colors must match the number of stops');
    
    return LinearGradient(
      colors: colors,
      stops: stops,
      begin: begin,
      end: end,
    );
  }
}

var boxListColors =[  const Color(0xFF6E00B8),  // First color
      const Color(0xFFC400E8),  // Second color
      const Color(0xFF310052)]; // Third color]
// List<Color> ]