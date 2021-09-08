import 'package:flutter/material.dart';
import 'package:schedulex/licenseconst.dart';
import 'package:schedulex/screens/home/widgets/HomePageColumn.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lorem ipsum"),
        actions: [
          IconButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: "Lorem ipsum",
                applicationLegalese: mitLicense,
                applicationVersion: "Demo 0.1",
                applicationIcon: SizedBox(
                  height: 64,
                  width: 64,
                  child: Placeholder(),
                ),
              );
            },
            icon: Icon(Icons.info),
          )
        ],
        elevation: 0,
        centerTitle: true,
      ),
      body: HomePageMainColumn(),
    );
  }
}
