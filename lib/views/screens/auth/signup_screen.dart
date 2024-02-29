import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TikTok Clone'
                ,style: TextStyle(fontSize: 35,
                    color: buttonColor,
                    fontWeight: FontWeight.w900
                ),
              ),
              const Text('Register',
                style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w900
                ),),
              const SizedBox(height: 15,),

              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                    backgroundColor: Colors.black,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      icon: Icon(Icons.add_a_photo),
                      onPressed: () {
                        print('pick');
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15,),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernameController,
                  labelText: 'User name',
                  icon: Icons.person,

                ),
              ),
              const SizedBox(height: 15,),

              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  labelText: 'Email',
                  icon: Icons.email,

                ),
              ),
              const SizedBox(height: 15,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  labelText: 'Password',
                  icon: Icons.lock,

                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Container(
                width: MediaQuery.of(context).size.width-40,
                height: 50,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),

                ),
                child: InkWell(
                  onTap: ()=>{
                    print("Register user")
                  },
                  child: const Center(
                    child: Text("Register", style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
              ),
              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account",
                    style: TextStyle(fontSize: 20, ),),
                  InkWell(
                    onTap: ()=>{
                      print("Navigating user")
                    },
                    child: Text(" Login",
                      style: TextStyle(fontSize: 20,
                          color: buttonColor),),
                  ),

                ],
              )

            ],
          ),
        )
    );
  }
}
