

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors:[
            Colors.blue,
            Colors.red,
          ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

   Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height:50),
            _inputField("Username", usernameController),
               const SizedBox(height:25),
            _inputField("Password", passwordController,isPassword: true),
               const SizedBox(height:50),
            _loginBtn(),
            
          ],
        ),
      ),
    );
   }

     Widget _icon(){
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white,width:2),
          shape: BoxShape.circle),
          child: const Icon(Icons.person, color: Colors.white, size: 120),
        
      );
     }
    
     Widget _inputField(String hintText,TextEditingController controller,
           {isPassword = false}){
            
            var border = OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white));
            
            return TextField(
              style: const TextStyle(color: Colors.white),
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.white),
                enabledBorder: border,
                focusedBorder: border,
              ),
              obscureText: isPassword,
            );
     }

     Widget _loginBtn() {
      return ElevatedButton(
      onPressed: () {}, 
       child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      )),
   
      );
     }
}