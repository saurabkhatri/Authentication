import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'email_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginKey = GlobalKey<FormState>();
  late String email,password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [


          Form(
              key: loginKey,
              child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email',

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          )

                      ),
                    validator: emailValidator,
                    onSaved: (value){
                        email = value ?? '';
                    },

                  ),
                  SizedBox(height: 16.0,),
                  TextFormField(
                    obscureText: true,
                      decoration: InputDecoration(
                        //label: Text('Email'),
                          hintText: 'Enter Password',

                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          )

                      ),
                      validator: (value){
                        if (value== null || value.isEmpty){
                          return 'Password cannot be empty';}
                        else if (value.length <=2){
                          return 'Your Password must be greater than 4';
                        }
                      },

                    onSaved: (value){
                      password = value ?? '';
                    },

                  ),
                  SizedBox(height: 16.0,),
                  ElevatedButton(
                    onPressed: _submit, child: Text('Login'),),

                ],
              )),

        ],
      ),
    );
  }

  void _submit(){
    if(loginKey.currentState!.validate()){
      loginKey.currentState!.save();
      print("Form is Valid");
      print("Email: $email, password : $password");



    }
  }
}
