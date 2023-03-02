
import 'package:get/get.dart';

class UserProviders extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=100");
    if (response.status.hasError) {
      return Future.error(response.statusText as Object);
    } else {
      return response.body['results'];
    }
  }
}