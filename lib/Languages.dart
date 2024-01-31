import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys=> {
    'en_US' : {
      'Language': 'English US',
      'message' : 'What is your name?',
      'name': 'Anon Hossain'
    },
    'ban_BD' : {
      'Language': 'বাংলা BD',
      'message' : 'আপনার নাম কি?',
      'name': 'আনন হোসেন'
    },
  };

}