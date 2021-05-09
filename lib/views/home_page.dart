import 'package:ecom_ui/models/requis_api_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<UserModel>(context);
    var apiData = _provider.data;
    return Scaffold(
      appBar: AppBar(
        title: Text('API CALLING'),
        centerTitle: true,
      ),
      body: Center(
        child: apiData == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(apiData.avatar),
                  Text(apiData.email),
                  Text(apiData.firstName),
                  Text(apiData.lastName),
                  Text(apiData.id.toString()),
                ],
              ),
      ),
    );
  }
}
