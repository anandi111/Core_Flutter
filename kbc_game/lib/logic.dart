import 'package:flutter/material.dart';

///index logic..
int questionIndex = 0;

///total Score..
int totalscore = 500;

List questionList = [
  {
    "question": "1.Which is National Bird of India?",
    "color": Colors.purpleAccent,
    "option": [
      {
        "opt": "Peacock",
        "isAns": true,
      },
      {
        "opt": "Dove",
        "isAns": false,
      },
      {
        "opt": "Eaggle",
        "isAns": false,
      },
      {
        "opt": "Sparrow",
        "isAns": false,
      },
    ],
  },
  {
    "question": "2. Which is National Fruit of India?",
    "color": Colors.lightGreenAccent,
    "option": [
      {"opt": "Mango", "isAns": true},
      {"opt": "Pineapple", "isAns": false},
      {"opt": "Watermelon", "isAns": false},
      {"opt": "Apple", "isAns": false},
    ]
  },
  {
    "question": "3. Which is National Tree of India?",
    "color": Colors.orangeAccent,
    "option": [
      {"opt": "Mango Tree", "isAns": false},
      {"opt": "Banyan Tree", "isAns": true},
      {"opt": "Coconut Tree", "isAns": false},
      {"opt": "Neem Tree", "isAns": false},
    ]
  },
  {
    "question": "4. Which is National Language of India?",
    "color": Colors.indigoAccent,
    "option": [
      {"opt": "English", "isAns": false},
      {"opt": "Gujarati", "isAns": false},
      {"opt": "Hindi", "isAns": true},
      {"opt": "Urdu", "isAns": false},
    ]
  },
  {
    "question": "5. Which is National Flower of India?",
    "color": Colors.pinkAccent,
    "option": [
      {"opt": "Lotus", "isAns": true},
      {"opt": "Rose", "isAns": false},
      {"opt": "Sunflower", "isAns": false},
      {"opt": "Lily", "isAns": false},
    ]
  },
  {
    "question": "6. Which is National Vegetable of India?",
    "color": Colors.purpleAccent,
    "option": [
      {"opt": "Gourd", "isAns": false},
      {"opt": "Brinjal", "isAns": false},
      {"opt": "Pumpkin", "isAns": true},
      {"opt": "Tomato", "isAns": false},
    ]
  },
  {
    "question": "7.Which is National River of India?",
    "color": Colors.lightGreen,
    "option": [
      {
        "opt": "ganga",
        "isAns": true,
      },
      {
        "opt": "Sarsvati",
        "isAns": false,
      },
      {
        "opt": "Yamuna",
        "isAns": false,
      },
      {
        "opt": "Tapi",
        "isAns": false,
      },
    ],
  },
  {
    "question": "8.Which is National Song of India?",
    "color": Colors.orangeAccent,
    "option": [
      {
        "opt": "Vande Matram",
        "isAns": true,
      },
      {
        "opt": "Jan gan man",
        "isAns": false,
      },
      {
        "opt": "Dharati",
        "isAns": false,
      },
      {
        "opt": "Mera desh",
        "isAns": false,
      },
    ],
  },
  {
    "question": "9.Which is National Aquatic Animal  of India?",
    "color": Colors.indigoAccent,
    "option": [
      {
        "opt": "River Dolphin",
        "isAns": true,
      },
      {
        "opt": "Dove",
        "isAns": false,
      },
      {
        "opt": "Pagvin",
        "isAns": false,
      },
      {
        "opt": "Golden Fish",
        "isAns": false,
      },
    ],
  },
  {
    "question": "10.Which is National Bird of India?",
    "color": Colors.pinkAccent,
    "option": [
      {
        "opt": "Peacock",
        "isAns": true,
      },
      {
        "opt": "Dove",
        "isAns": false,
      },
      {
        "opt": "Eaggle",
        "isAns": false,
      },
      {
        "opt": "Sparrow",
        "isAns": false,
      },
    ],
  },
];
