import 'package:quiz_app/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "How many legs does a spider have?",
    {
      "1": false,
      "3": false,
      "8": true,
      "5": false,
    },
  ),
  QuestionModel("What is the name of the toy cowboy in Toy Story ?", {
    "Jessie": false,
    "Buzz": false,
    "Lenny": false,
    "Woody": true,
  }),
  QuestionModel("What is the color of an emerald ?", {
    "Red": false,
    "Green": true,
    "Blue": false,
    "Black": false,
  }),
  QuestionModel("How many moons does Mars have ?", {
    "1": false,
    "2": false,
    "4": true,
    "8": false,
  }),
  QuestionModel("Which ocean is off the California coast ?", {
    "Pacific Ocean": true,
    "Atlantic Ocean": false,
    "Indian Ocean": false,
    "Arctic Ocean": false,
  }),
  QuestionModel("What is a group of lions called ?", {
    "A Herd": false,
    "A Pack of": false,
    "A Pride": true,
    "A Shrewdness": false,
  }),
  QuestionModel(
      "Mars is Named after the Roman god Mars. What is he the god of ?", {
    "Fire": false,
    "Love": false,
    "Agriculture": false,
    "War": true,
  }),
  QuestionModel("Mars Is the ___ planet from the sun ?", {
    "Second": false,
    "Third": false,
    "Fourth": true,
    "Sixth": false,
  }),
  QuestionModel(
      "Which planet in our Solar System is known for having a ring ?", {
    "Jupiter": false,
    "Uranus": false,
    "Saturn": true,
    "Mercury": false,
  }),
  QuestionModel(
      "The First astronaut to travel to space came from which country ?", {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
  }),
  QuestionModel("Who was the first American president ?", {
    "Abraham Lincoln": false,
    "George Washington": true,
    "Ronald Reagan": false,
    "Bill Clinton": false,
  }),
  QuestionModel("How many continents are there in the world ?", {
    "5": false,
    "7": true,
    "6": false,
    "8": false,
  }),
  QuestionModel("How many bones do sharks have ?", {
    "5": false,
    "7": false,
    "6": false,
    "0": true,
  }),
];
