import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formkey = GlobalKey<FormState>();

  bool obscurePassword = true;
  Color passwordEyeColor = Colors.grey;
  bool isPasswordFocused = false;

  void updatePasswordField() {
    setState(() => obscurePassword = !obscurePassword);
    if (obscurePassword == true) {
      passwordEyeColor = Colors.grey;
    } else {
      passwordEyeColor = Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
        appBar: desoAppBar(context, true),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Change password',
                  style: boldHeading,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  obscureText: obscurePassword,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }
                    if (true) {
                      return 'The password you have entered is incorrect.';
                    }
                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(),
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'current password',
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20, top: 10),
                  child: Text('Passwords must have at least 8 characters.',
                      style: regularTextStyle),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: TextFormField(
                  obscureText: obscurePassword,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }

                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(),
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'new password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: TextFormField(
                  obscureText: obscurePassword,
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (s) {
                    if (s!.isEmpty) {
                      return 'This is a required field.';
                    }

                  },
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => updatePasswordField(),
                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: passwordEyeColor,
                          size: 25,
                        )),
                    helperText: '',
                    hintText: 'confirm new password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      _formkey.currentState!.validate();
                    },
                    style: elevatedButtonStyle,
                    child: Text(
                      'Update',
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavBar2(),
      ),
    );
  }
}
