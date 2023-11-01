import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rentara/widgets/background-image.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  //login user method
  Future login() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      );
      //pop the loading circle
      //Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //wrong email
      if (e.code == 'user-not-found') {
        //show error to user
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        //show error to user
        wrongPasswordMessage();
      }
    }
  }

  //wrong email message popup
  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Color(0xFF7D613B),
            title: Text("Incorrect Email"),
          );
        }
    );
  }

  //wrong password message popup
  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Color(0xFF7D613B),
            title: Text("Incorrect Password"),
          );
        }
    );
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        SizedBox(
                          height: 490,
                          width: 326,
                          child: Card(
                            elevation: 0,
                            color: Color(0xFFFFFFFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //logo
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Image.asset('assets/icons/trans_logo.png'),
                                const SizedBox(height: 20,),
                                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: TextField(
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                      fillColor: Color(0xBFD9D9D9),
                                      filled: true,
                                      hintText: 'Email Address',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Color(0xFF7D613B),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                                  child: TextField(
                                    controller: _passwordController,
                                    maxLength: 8,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                      fillColor: Color(0xBFD9D9D9),
                                      filled: true,
                                      hintText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        ),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Color(0xFF7D613B),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Lupa kata sandi?',
                                  style: TextStyle(
                                    color: Color(0xFF7D613B),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: login,
                                  child: Container(
                                    padding: const EdgeInsets.all(15),
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF7D613B),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 20),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          thickness: 0.5,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Text(
                                          'OR',
                                          style: TextStyle(color: Colors.grey[700]),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          thickness: 0.5,
                                          color: Colors.grey[400],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 20),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Not a member?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    GestureDetector(
                                      onTap: widget.onTap,
                                      child: const Text(
                                        'Register now',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF7D613B),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
