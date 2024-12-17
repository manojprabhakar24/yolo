// model.dart

import 'package:flutter/material.dart';

class Business {
  final String name;
  final String description;
  final String offers;
  final String phone;
  final String rating;

  Business({
    required this.name,
    required this.description,
    required this.offers,
    required this.phone,
    required this.rating,
  });
}

List<Business> getPaidBusinesses() {
  return [
    Business(
      name: 'Business 1',
      description: 'This is the description of Business 1.',
      offers: '10% off ',
      phone: '123-456-7890',
      rating: '4.5',
    ),
    Business(
      name: 'Business 2',
      description: 'This is the description of Business 2.',
      offers: 'Buy 1 get 1 free',
      phone: '987-654-3210',
      rating: '4.0',
    ),
    Business(
      name: 'Business 3',
      description: 'This is the description of Business 3.',
      offers: 'Buy 1 get 2 free',
      phone: '097-654-32199',
      rating: '3.9',
    ),
    Business(
      name: 'Business 4',
      description: 'This is the description of Business 4.',
      offers: 'Buy 1 get 1 free',
      phone: '987-654-3210',
      rating: '4.1',
    ),
    // Add more businesses here
  ];
}
class PlaceCard {
  final String title;
  final String cost;
  final String plan;
  final String description;

  PlaceCard({
    required this.title,
    required this.cost,
    required this.plan,
    required this.description,
  });
}

// Example list of PlaceCards
final List<PlaceCard> placeCards = [
  PlaceCard(
    title: 'Park Visit',
    cost: '\$20',
    plan: 'Basic Plan',
    description: 'Access to all parks in your city.',
  ),
  PlaceCard(
    title: 'Community Gym',
    cost: '\$50',
    plan: 'Premium Plan',
    description: 'Includes gym, yoga, and Zumba classes.',
  ),
];
class UserProfile {
  final String name;
  final int age;
  final String gender;
  final String location;
  final bool notificationsEnabled;
  final bool visibilityEnabled;

  UserProfile({
    required this.name,
    required this.age,
    required this.gender,
    required this.location,
    required this.notificationsEnabled,
    required this.visibilityEnabled,
  });
}

class LifestyleData {
  final String date;
  final int activityLevel;

  LifestyleData({required this.date, required this.activityLevel});
}

class AppPreference {
  final String title;
  final dynamic icon;

  AppPreference({required this.title, required this.icon});
}

final UserProfile userProfile = UserProfile(
  name: "Manoj Prabhakar",
  age: 25,
  gender: "Male",
  location: "Bengaluru",
  notificationsEnabled: true,
  visibilityEnabled: true,
);

final List<LifestyleData> lifestylePatterns = [
  LifestyleData(date: "2024-12-17", activityLevel: 6),
  LifestyleData(date: "2024-12-16", activityLevel: 5),
  LifestyleData(date: "2024-12-15", activityLevel: 2),
  LifestyleData(date: "2024-12-14", activityLevel: 3),
  LifestyleData(date: "2024-12-13", activityLevel: 4),
];

final List<AppPreference> appPreferences = [
  AppPreference(title: "Home", icon: Icons.home),
  AppPreference(title: "Clothing", icon: Icons.checkroom),
  AppPreference(title: "Food", icon: Icons.fastfood),
  AppPreference(title: "Assets", icon: Icons.account_balance),
];
