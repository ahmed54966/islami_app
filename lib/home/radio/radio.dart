import 'package:flutter/material.dart';
import 'package:islami/home/colors.dart';
import 'package:just_audio/just_audio.dart';
import 'package:islami/l10n/app_localizations.dart';

class RadioTab extends StatefulWidget{

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  // تعريف مشغل الصوت
  final AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;
  // رابط إذاعة القرآن الكريم من القاهرة (رابط مباشر)
  final String radioUrl = "https://n01.radiojar.com/8s9u5p3nwtuvn?rj-ttl=5&rj-tok=AAABjS...";
  @override
  void initState() {
    super.initState();
    _setupAudio();
  }

  Future<void> _setupAudio() async {
    try {
      await _player.setUrl(radioUrl);
    } catch (e) {
      print("Error loading audio: $e");
    }
  }

  void _togglePlay() {
    if (isPlaying) {
      _player.stop();
    } else {
      _player.play();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  void dispose() {
    _player.dispose(); // إغلاق المشغل عند الخروج من التطبيق
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/radio_image.png"),
            SizedBox(height: 10),

            // زر التشغيل والإيقاف
            
            GestureDetector(
              onTap: _togglePlay,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: isPlaying ? Colors.red : AppColors.tealColor,
                child: Icon(
                  isPlaying ? Icons.stop : Icons.play_arrow,
                  size: 50,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              isPlaying ? AppLocalizations.of(context)!.running : AppLocalizations.of(context)!.stopped,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      );
    
  }
}