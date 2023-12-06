import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_login/flutter_login.dart';

import '../login.dart';

 const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class SignupPage extends StatefulWidget {
  const SignupPage({super.key, required this.title});

  final String title;
  

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  static const Color kbackgroundColor = Color(0xFFf1f1f1);
  static const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  bool isclick = false;
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }
  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController passController =TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundAppbar,
        body: SingleChildScrollView(
          child: Column(
            children: [
                    Center(
                      child: Container(
                        width: 235,
                        height: 153,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/logofood.png'
                            ),
                            )
                        ),
                        margin: EdgeInsets.only(top: 90),
                        
                      ),
                    ),
                    
                  
                  Padding(padding: EdgeInsets.all(8)),
                  Text('Đăng ký tài khoản của bạn',
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 17,
                    color: kbackgroundColor
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Column(
                      children: [
                        _inputField('Username', userNameController),
                        Padding(padding: EdgeInsets.all(8)),
                        _inputField('Password', passController, isPassword: true),
                        Padding(padding: EdgeInsets.all(12)),
                        _inputField('Nhập lại Password', passController, isPassword: true),
                        Padding(padding: EdgeInsets.all(12)),
                        Center(
                          child: Container(
                                              width: MediaQuery.of(context).size.width/2 -15,
                                              child: ElevatedButton.icon(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(title: '',)));
                                              },
                                              style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(kbackgroundColor)
                                              ),
                                              icon: Icon(Icons.login_outlined, color: kbackgroundAppbar,),
                                              label: Text('Xong', style: TextStyle(color: kbackgroundAppbar)))),
                        ),
                      Padding(padding: EdgeInsets.all(5)),
                      
                      ],
                    ),
                  ),
            ],
          ),
        )
        );
  }
}

Widget _inputField(String hinttext, TextEditingController textEditingController, {isPassword = false}) {
  const Color kbackgroundColor = Color(0xFFf1f1f1);
  const Color kbackgroundAppbar = Color.fromARGB(255, 123, 51, 25);
  var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(25),
    borderSide: BorderSide(color: kbackgroundColor)
  );
  return TextField(
    style: TextStyle(
      color: kbackgroundColor,
    ),
    controller: textEditingController,
    decoration: InputDecoration(
      hintText: hinttext,
      hintStyle: TextStyle(color: kbackgroundColor),
      enabledBorder: border,
      focusedBorder: border,
    ),
    obscureText: isPassword,
  );
}