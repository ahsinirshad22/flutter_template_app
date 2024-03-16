import '../utils/export.dart';

class CommonController extends GetxController {
  var isDarkTheme = false.obs;
  var selectedLanguage = "en".obs;
  final localStorage = GetSecureStorage(password: AppConstant.dbSecurityKey);
  var selectedMenuItem = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getThemeFromStorage();
  }

  Future<void> setFirstTimeOver() async {
    await localStorage.write(AppConstant.keyIsFirstTime, true);
  }

  Future<bool> isFirstTime() async {
    var res = await localStorage.read(AppConstant.keyIsFirstTime);
    if (res != null) {
      return !res;
    }
    return true;
  }

  Future<void> getThemeFromStorage() async {
    var res = await localStorage.read(AppConstant.keyIsDarkTheme);
    if (res != null) {
      isDarkTheme.value = res;
      Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
      return;
    }
    isDarkTheme.value = false;
  }

  Future<void> setDarkTheme({required bool enableDarkTheme}) async {
    await localStorage.write(AppConstant.keyIsDarkTheme, enableDarkTheme);
    isDarkTheme.value = enableDarkTheme;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }

  Future<bool> isLogin() async {
    // var res = await localStorage.read(AppConstant.keyUser);
    // if (res != null) {
    //   user.value = LoginModel.fromJson(res);
    //   if (user.value.token == null) {
    //     return false;
    //   } else {
    //     return true;
    //   }
    // }
    return false;
  }

  logOutUser() async {
    // await localStorage.remove(AppConstant.keyUser);
    // selectedMenuItem.value = 0;
    // user = LoginModel().obs;
    // transactions = TransactionsDataModel().obs;
    // attendances = AttendanceModel().obs;
    // Get.offAll(LoginScreen());
  }

  // /// get attendances api calling method
  // getAttendances({int pageNo = 1}) async {
  //   String url = AppConstant.attendancesUrl;
  //   if (pageNo == 1) {
  //     isGettingAttendances.value = true;
  //   } else {
  //     url = "$url?page=$pageNo";
  //     isPaginatingAttendances.value = true;
  //   }
  //   if (pageNo > 1 && pageNo == attendancesCurrentPageNo) {
  //     return;
  //   } else {
  //     attendancesCurrentPageNo = pageNo;
  //   }
  //
  //   log("Inside attendances page");
  //
  //   var response = await BaseClient().getWithAuth(url);
  //   if (response != null) {
  //     try {
  //       var res = AttendanceModel.fromMap(response);
  //       if (attendances.value.data != null) {
  //         if (attendances.value.data!.isNotEmpty) {
  //           var updatedList = attendances.value.data;
  //           if (res.data != null) {
  //             if (pageNo == 1) {
  //               attendances.value = res;
  //             } else {
  //               updatedList?.addAll(res.data as Iterable<Attendance>);
  //               res.data = updatedList;
  //               attendances.value = res;
  //             }
  //           }
  //         }
  //       } else {
  //         attendances.value = res;
  //         log("DDDD = ${attendances.value.toJson()}");
  //       }
  //     } catch (e, stacktrace) {
  //       if (kDebugMode) {
  //         print(stacktrace);
  //       }
  //       showAlert(
  //           dialogType: DialogType.error,
  //           title: "exceptionOccurred".tr,
  //           description: e.toString());
  //     }
  //   }
  //   if (pageNo == 1) {
  //     isGettingAttendances.value = false;
  //   } else {
  //     isPaginatingAttendances.value = false;
  //   }
  // }

  loginUser({required String email, required String password}) async {
    // showLoadingDialog();
    // var response = await BaseClient().post(
    //   AppConstant.loginUrl,
    //   '{"email":"${email.trim()}","password":"${password.trim()}"}',
    // );
    // await loginResponseHelper(response);
  }

  updateUserNotificationId() async {
    // var notificationId = await OneSignalConfig.getPlayerId();
    // log("Notification ID: $notificationId");
    // if (notificationId == null) {
    //   return;
    // }
    // if (await isLogin()) {
    //   BaseClient().postWithAuth(
    //     AppConstant.updateNotificationIdUrl,
    //     '{"notification_id":"${notificationId.trim()}"}',
    //   );
    // }
  }

  gotoDashboard() async {
    // if (await isLogin()) {
    //   Get.to(() => const HomeScreen());
    // } else {
    //   Get.to(() => const SignInScreen());
    // }
  }
}
