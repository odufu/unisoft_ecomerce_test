import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../products/presentation/pages/home_page.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: Constants.paddingSmall),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

            //L O G O
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Constants.logoFile,
                height: 240,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: Constants.marginBig,
            ),



            //T I T L E

            const Text(
              "JUST BUY IT",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: Constants.marginMedium,
            ),



            // S U B T I T L E
            const Text(
              "Close Eyes and just Buy these premeum quality shoes, there is no better value for money..",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: Constants.marginBig,
            ),



            //S T A R T  N O W

            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(Constants.paddingMedium),
                child: const Center(
                  child: Text(
                    "Start Now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
