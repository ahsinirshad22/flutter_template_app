import 'package:flutter_template/theme/app_text_theme.dart';

import '../../controller/common_controller.dart';
import '../../utils/export.dart';

class IntroScreenOne extends StatefulWidget {
  const IntroScreenOne({super.key});

  @override
  State<IntroScreenOne> createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  final CommonController controller = Get.find<CommonController>();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.gc(AppColor.whiteBlack),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Intro Screen One",
              style: TextStyle(
                fontSize: 30,
                color: context.gc(
                  AppColor.blackWhite,
                ),
              ),
            ),
            Text(
              "Intro Screen Two",
              style: TextStyle(
                fontSize: 30,
                color: context.gc(
                  AppColor.blackWhite,
                ),
              ),
            ),
            Text(
              "Intro Screen Three",
              style: context.effraTextStyle(),
            ),
            Text(
              "Intro Screen Four",
              style: context.openSansTextStyle(),
            ),
            Text(
              "Intro Screen Five",
              style: context.openSansTextStyle().copyWith(
                    color: context.gc(
                      AppColor.bodyColor2,
                    ),
                  ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Ahsin", suffix: Icon(Icons.calendar_month)),
              ),
            ),
            Checkbox(
                value: check,
                onChanged: (v) {
                  check = v ?? false;
                  setState(() {});
                }),
            ElevatedButton(
              onPressed: () {
                controller.setDarkTheme(
                    enableDarkTheme: !controller.isDarkTheme.value);
              },
              child: const Text("Change Theme"),
            ),
          ],
        ),
      ),
    );
  }
}
