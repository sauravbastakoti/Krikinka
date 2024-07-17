import 'package:bidhan_prohect/src/dashboard/home_screen.dart';
import 'package:bidhan_prohect/src/login_register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD4FCE4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                      letterSpacing: 0.4,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                _buildTextField(
                  context,
                  label: 'Username',
                  icon: Icons.person,
                ),
                const SizedBox(height: 20),
                _buildTextField(
                  context,
                  label: 'Password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 19),
                  decoration: BoxDecoration(
                    color: const Color(0xC91B9527),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Get.to(const HomeScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'Login',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const Register());
            },
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFCF6F6),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 17.5, 0, 20.5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'New user sign up here',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: const Color(0xFF000000),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context,
      {required String label,
      required IconData icon,
      bool obscureText = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: const Color(0xFF706060)),
          hintText: label,
          hintStyle: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: const Color(0xFF706060),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }
}
