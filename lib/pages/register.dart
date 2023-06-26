import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:issatso_events/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

bool isFlicked = false;
bool isVisible = false;

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Sign up",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outlined),
                  labelText: "Fullname",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail_outline),
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: isVisible == true
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  prefixIcon: const Icon(Icons.lock_outlined),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onTapOutside: (event) =>
                    FocusScope.of(context).requestFocus(FocusNode()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: isVisible,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: isVisible == true
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                  ),
                  prefixIcon: const Icon(Icons.lock_outlined),
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onTapOutside: (event) =>
                    FocusScope.of(context).requestFocus(FocusNode()),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00CEC1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        const Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 17),
                        ),
                        const Spacer(),
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 145, 219, 214),
                              borderRadius: BorderRadius.circular(300),
                            ),
                            child: const Icon(Icons.arrow_forward)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/ggl.png")),
                        const Spacer(),
                        const Text(
                          "Sign up with Google",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/fb.png")),
                        const Spacer(),
                        const Text(
                          "Sign up with Facebook",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF00CEC1)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF00CEC1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
