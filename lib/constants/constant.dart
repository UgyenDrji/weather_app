import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const baseUrlWeather = "https://api.openweathermap.org/data/2.5/weather";
const baseUrlForecast = "https://api.openweathermap.org/data/2.5/forecast";
const key = "f08dcbccee7879e705956b36246a10b7";

const iconStartPoint = "https://openweathermap.org/img/wn/";
const iconEndPoint = "@2x.png";


myStyle(double fs,[Color ?clr,FontWeight ?fw]) {
  return GoogleFonts.oleoScript(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}