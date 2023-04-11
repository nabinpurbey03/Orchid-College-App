import 'package:flutter/material.dart';
import 'package:orchid_app/components/default_button.dart';
import 'package:orchid_app/constants.dart';

import '../home_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final userName = TextEditingController();

  final password = TextEditingController();

  bool? isChecked = false;

  final formKey = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();

  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: oBackgroundColor,
        body: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Image(image: AssetImage("assets/images/orchid_logo.png")),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: userName,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: oPrimaryColor,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter the email";
                    } else if (!val.toString().contains("@")) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: const Text("Email"),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    hintText: "Enter user name",
                    prefixIcon:
                        const Icon(Icons.account_circle_outlined, size: 30),
                    prefixIconColor: oPrimaryColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Form(
              key: formKey1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: password,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: oPrimaryColor,
                  obscureText: obsecure,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Enter the password";
                    } else if (val.toString().length < 8) {
                      return "Enter at latest 8 characters";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    prefixIcon: const Icon(
                      Icons.lock_outlined,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            obsecure = !obsecure;
                          });
                        },
                        icon: obsecure
                            ? const Icon(Icons.visibility,size: 30, color: oPrimaryColor,)
                            : const Icon(Icons.visibility_off,size: 30,color: oPrimaryColor,)),
                    prefixIconColor: oPrimaryColor,
                    hintText: "Enter password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: oPrimaryColor,
                    onChanged: (val) {
                      setState(() {
                        isChecked = val;
                      });
                    }),
                const Text(
                  "Remember me",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: DefaultButton(
                text: "Sign In",
                press: () {
                  if (formKey.currentState!.validate() &&
                      formKey1.currentState!.validate()) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
