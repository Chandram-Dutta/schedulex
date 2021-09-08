import 'package:flutter/material.dart';
import 'package:schedulex/screens/home/widgets/Details.dart';
import 'package:schedulex/screens/home/widgets/Logo.dart';

class HomePageMainColumn extends StatelessWidget {
  const HomePageMainColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Logo(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).accentColor),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/schedule');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.date_range),
                    Text(
                      "Go to Scheduler",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Details()
          ],
        ),
      ),
    );
  }
}
