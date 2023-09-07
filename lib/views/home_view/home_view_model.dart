import 'package:bio_app/shared/app_color.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel {
  String name = 'Egbekwu NwaneDiLoBu';
  String slackName = 'DiLo';
  String email = 'egbekwunwanedilobu@gmail.com';

  String phone = '+2349051309102';

  String image = userImage;

  var url = 'https://www.github.com/N-DiLo';

  Future<void> visitGitHub() async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }
}
