import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> pages = [
  {
    "image": "assets/images/onboarding_one.png",
    "id": 0,
    "title": "Fastest Payment in the world",
    "subtitle":
        "Integrate multiple payment methods to help you up the process quickly"
  },
  {
    "image": "assets/images/onboarding_two.png",
    "id": 1,
    "title": "The most Secure Platform for Customer",
    "subtitle":
        "Built-in Fingerprint, face recognition and more, keeping you completely safe"
  },
  {
    "image": "assets/images/onboarding_four.png",
    "id": 2,
    "title": "Paying for Everything is Easy and Convenient",
    "subtitle":
        "Built-in Fingerprint, face recognition and more, keeping you completely safe"
  },
];

// Bottom Navbar Menu

final List<Map<String, dynamic>> bottomNavOptions = [
  {
    "label": 'Home',
    "icon": "assets/icons/home_default.png",
    "active_icon": "assets/icons/home_active.png",
    "path": "/dashboard"
  },
  {
    "label": 'My Cards',
    "icon": "assets/icons/card_default.png",
    "active_icon": "assets/icons/card_active.png",
    "path": "/cards"
  },
  {
    "label": 'Statistics',
    "icon": "assets/icons/statistics_default.png",
    "active_icon": "assets/icons/statistics_active.png",
    "path": "/statistics"
  },
  {
    "label": 'Settings',
    "icon": "assets/icons/setting_default.png",
    "active_icon": "assets/icons/setting_active.png",
    "path": "/settings"
  }
];

// Menu Options

final List<Map<String, String>> transactionHistory = [
  {"name": "Apple Store ", "category": "Entertainment"},
  {"name": "Spotify", "category": "Music"},
  {"name": "Money Transfer", "category": "Transportation"},
  {"name": "Grocery", "category": "Grocery"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
  {"name": "Data", "category": "Yes"},
];
