
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation/Component/account_textfield.dart';
import 'package:meditation/Component/custom_appbar.dart';
import 'package:meditation/Constant/color.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ts = TextStyle(color: PRIMARY_COLOR, fontSize: 32);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRIGHT_COLOR,
      body: GestureDetector(
        onTap: (){},
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

                CustomAppBar(titleText: '로그인'),
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 16,),
                      Text('로고 이미지',style: ts,),
                      const SizedBox(height: 16,),
                      LoginPart(),
                      BottomPart(
                        //텍스트 버튼을 모아둔 봄
                        onPressed_signup: onPressed_signup_btn, //회원가입 버튼
                        onPressed_findaccount:
                        onPressed_findaccount_btn, //아이디 찾기 버튼
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed_signup_btn() {
    //회원가입(signup.dart) 스크린으로 이동

  }

  void onPressed_findaccount_btn() {
    //계정찾기(find_account_route.dart) 스크린으로 이동

  }
}

class LoginPart extends StatefulWidget {
  const LoginPart({Key? key}) : super(key: key);

  @override
  State<LoginPart> createState() => _LoginPartState();
}

class _LoginPartState extends State<LoginPart> {
  bool alwaysLoginCheck = false;
  final ts = TextStyle(color: PRIMARY_COLOR);
  final TextEditingController _idTextController = TextEditingController();
  final TextEditingController _pwTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(48.0, 0, 48, 0),
      child: Column(
        children: [
          CustomTextField(
              textInputType: TextInputType.text,
              Controller: _idTextController,
              label: 'ID입력'),
          SizedBox(height: 16.0),
          CustomTextField(
              textInputType: TextInputType.visiblePassword,
              Controller: _pwTextController,
              label: 'PASSWORD 입력'),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('로그인 상태 유지', style: ts),
              Switch(
                value: alwaysLoginCheck,
                onChanged: (value) async {

                  setState(() {
                    alwaysLoginCheck = value;

                  });
                },
              ),
            ],
          ),
          ButtonTheme(
            //로그인 성공시 홈화면으로 가게 해주는 네비게이터 버튼. 버튼클릭시
            //클릭시 로그인 성공여부를 확인해줄 로직 추가예정.
            minWidth: 80.0,
            height: 30.0,
            child: ElevatedButton(
              //로그인 시도 버튼.
              style: ElevatedButton.styleFrom(
                primary: PRIMARY_COLOR,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), //버튼모양 둥글게.
                ),
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 35.0,
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }
}

class BottomPart extends StatelessWidget {
  final VoidCallback onPressed_signup;
  final VoidCallback onPressed_findaccount;

  const BottomPart({
    required this.onPressed_signup,
    required this.onPressed_findaccount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: onPressed_signup,
              child: Text('회원가입'),
            ),
            Text("|"),
            TextButton(
              onPressed: onPressed_findaccount,
              child: Text('아이디찾기'),
            ),
          ],
        ),
      ],
    );
  }
}
