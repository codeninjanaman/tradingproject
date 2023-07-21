import 'package:flutter/material.dart';
import 'package:responsivedesign2/pallete.dart';
import 'package:responsivedesign2/services/auth_services.dart';
import 'package:responsivedesign2/signIn/SignIn.dart';
import 'package:responsivedesign2/signup/signupfields.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final AuthService authService = AuthService();
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

  void signupUser(){
     authService.signUpUser(context: context, email: _emailController.text, password: _passwordController.text, name: _nameController.text);
     
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
                child: Text("Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50
                ),),
              ),
              const SizedBox(height: 40),
              LoginField(hintText: "Name", controller: _nameController),
              const SizedBox(height: 15),
              LoginField(hintText: "Email", controller: _emailController),
              const SizedBox(height: 15),
              LoginField(hintText: "Password", controller: _passwordController),
              SizedBox(height: 20),
              Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
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
        onPressed: signupUser,
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
             const Text('Already have an account?',
             style: TextStyle(fontSize: 12,
             color: Colors.black),),
             SizedBox(
               child: TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignIn()));
               }, child:const Text('Sign In',
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