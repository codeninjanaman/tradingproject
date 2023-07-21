import 'package:flutter/material.dart';
import 'package:responsivedesign2/desktop_scaffold.dart';
import 'package:responsivedesign2/signup/gradient_button.dart';
import 'package:responsivedesign2/signup/signupfields.dart';

import '../pallete.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
      _passwordController.dispose();
      _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: myAppBar,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Text("Sign In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50
                ),),
              ),
              const SizedBox(height: 40),
              LoginField(hintText: "Email", controller: _emailController),
              const SizedBox(height: 15),
              LoginField(hintText: "Password", controller: _passwordController),
              SizedBox(height: 20),
              Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Pallete.gradient1,
            Pallete.gradient2,
            Pallete.gradient3,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: ElevatedButton(
        onPressed: (){
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text('Don\'t have an account?',
             style: TextStyle(fontSize: 12,
             color: Colors.black),),
             SizedBox(
               child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DesktopScaffold()));
               }, child:const Text('Sign Up',
               style: TextStyle(fontSize: 12,
               color: Colors.pink,
               decoration: TextDecoration.underline,
                         ),) ),
             ),
            
          ],)
            ],
          ),
        ),
      )
    );
  }
}