import 'package:flutter/material.dart';

class ShadowStyle {
  static final verticatProductShadow = BoxShadow(
    color: Colors.grey[200]!.withOpacity(0.7),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
