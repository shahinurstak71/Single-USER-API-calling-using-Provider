import 'package:ecom_ui/models/requis_api_model.dart';
import 'package:http/http.dart';

class ApiRequesIn {
  static Future<UserModel> getData() async {
    var request = Request('GET', Uri.parse("https://reqres.in/api/users/2"));
    StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      var body = await response.stream.bytesToString();
      UserModel encodedData = userModelFromJson(body);
      print(body);
      return encodedData;
    } else {
      print(response.reasonPhrase);
      return Future.value(UserModel());
    }
  }
}
