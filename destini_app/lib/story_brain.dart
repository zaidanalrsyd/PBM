//TODO: Step 6 - import story.dart
import 'story.dart';

//TOTO: Step 5 - membuat class StoryBrain
class StoryBrain {
  //TODO: Step 7 - membuat storyData sebagai private properties
  final List<Story> _storyData = [
    Story(
        storyTitle:
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: ''),
  ];

  //TODO: Step 8 - membuat method getStory() yang return first storyTitle dari _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  //TODO: Step 11 membuat method getChoice1 yang returnnya adalah choice1 dari _storyData
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //TODO: Step 12 membuat method getChoice1 yang returnnya adalah choice2 dari _storyData
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //TODO: Step 16 - Membuat property storyNumber yang dimulai dari nol (0).
  // Digunakan untuk tracking story yang sedang dilihat

  //TODO: Step 25 - ganti storyNumber property ke private property sehingga hanya
  // story_brain.dart yang bisa mengakses
  int _storyNumber = 0;

  void restart() {
    _storyNumber = 0;
  }

  //TODO: Step 17 - membuat method nextStory()
  void nextStory(int choiceNumber) {
    //TODO: Step 21 - menggunakan story plan, update nextStory ganti storyNumber
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }

    //TODO: Step 22 - di nextStory() jika storyNumber 3 atau 4 atau 5,
    // artinya game berakhir dan panggil method restart()
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  //TODO: Step 27 - membuat method buttonShouldBeVisible() untuk mengecek apakah storyNumber is 0 or 1 or 2
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}