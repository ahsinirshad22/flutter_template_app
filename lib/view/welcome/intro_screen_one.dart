import '../../controller/common_controller.dart';
import '../../utils/export.dart';

class IntroScreenOne extends StatefulWidget {
  const IntroScreenOne({super.key});

  @override
  State<IntroScreenOne> createState() => _IntroScreenOneState();
}

class _IntroScreenOneState extends State<IntroScreenOne> {
  final CommonController controller = Get.find<CommonController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Intro Screen One",
              style: TextStyle(
                fontSize: 50,
                color: context.getColor(
                  AppColor.blackWhite,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.setDarkTheme(
                    enableDarkTheme: !controller.isDarkTheme.value);
                setState(() {});
              },
              child: Text("Change Theme"),
            ),
          ],
        ),
      ),
    );
  }
}
