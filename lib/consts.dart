import 'dart:ui';

import 'package:flutter/material.dart';
//const buat nyimpen value, warna, tema(kunci dari nilai awal, tidak bisa di ubah)/(const udah di tentuin)
//final untuk nyimpen variable kl ngambil dari library bisa di ubah'(cuma bisa sekali ganti, setelah itu tidak bisa di ubah)(contohnya:login cuma bisa sekali),(bisa di ganti sekali doang)
//resign gabisa di ganti

//A primary color definition
const primaryColor = Color.fromARGB(255, 40, 40, 40);
const primaryLightColor = Color(0xFFFFECDF);
const primaryGradientColor = LinearGradient(
  colors: [
    Color.fromARGB(255, 62, 62, 62),
    Color.fromARGB(255, 91, 91, 91),
  ]);

  //A secondary color definition
  const secondaryColor = Color(0xFF979797);
  const textColor = Color(0xFF757575);

  //animationDuration time definition
  const animationDuration = Duration(milliseconds: 200);

  //default constant value for padding size
  const defaultPadding =20.0;