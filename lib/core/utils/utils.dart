import 'package:just_audio/just_audio.dart';

Future<void> playKeyboardSound() async {
  final audioPlayer = AudioPlayer();
  await audioPlayer.setAsset('assets/sounds/keyboard_sound.mp3');
  await audioPlayer.play();
  audioPlayer.dispose();
}
